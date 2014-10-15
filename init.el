(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(load "~/.emacs.d/user.el")

;; graphene
(require 'graphene)

;;exec-path-from-shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;(global-rainbow-delimiters-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(setq solarized-distinct-fringe-background t)
(load-theme 'solarized-dark t)
;; font
(add-to-list 'default-frame-alist
             '(font . "Deja Vu Sans Mono-12"))
(set-frame-font "Deja Vu Sans Mono-12" nil t)


;;(global-linum-mode t)
(menu-bar-mode t)

;; cider use clojure syntax
(setq cider-repl-use-clojure-font-lock t)

;; clojure settings
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook 'paredit-mode)


;; dirtree (tree view)
;;(require 'tree-mode)
;;(require 'windata)
;;(require 'dirtree)
;;(autoload 'dirtree "dirtree" "Add directory to tree view" t)
;;(global-set-key "\C-o" 'dirtree-show)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("1989847d22966b1403bab8c674354b4a2adf6e03e0ffebe097a6bd8a32be1e19" "7d4d00a2c2a4bba551fcab9bfd9186abe5bfa986080947c2b99ef0b4081cb2a6" "a774c5551bc56d7a9c362dca4d73a374582caedb110c201a09b410c0ebbb5e70" "90b5269aefee2c5f4029a6a039fb53803725af6f5c96036dee5dc029ff4dff60" "11d069fbfb0510e2b32a5787e26b762898c7e480364cbc0779fe841662e4cf5d" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default)))
 '(global-linum-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'erase-buffer 'disabled nil)

