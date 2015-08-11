(**
  * 概要
  本ライブラリの目的は以下の通りです。
  - ほげほげアルゴリズムの形式化
  - ほげほげアルゴリズムに関する検証
    - 停止性の証明
    - 健全性の証明
*)
Require Import Program.
Open Scope list_scope.

(**
  * アルゴリズムの定義
  $f(x) = \displaystyle{\sum_{i=0}^{n-1}\left(\frac{1}{n+1}\right)}$
  *)

Definition x := 3.

(**
  * 証明
  *)
Theorem t : forall (A:Type)(xs : list A), length xs = 0 -> xs = [].
Proof.
 intros A xs.
 destruct xs. 
  - auto.
  - discriminate.
Qed.
