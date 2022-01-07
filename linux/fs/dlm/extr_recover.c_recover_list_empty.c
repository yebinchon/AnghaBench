
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_recover_list_lock; int ls_recover_list; } ;


 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int recover_list_empty(struct dlm_ls *ls)
{
 int empty;

 spin_lock(&ls->ls_recover_list_lock);
 empty = list_empty(&ls->ls_recover_list);
 spin_unlock(&ls->ls_recover_list_lock);

 return empty;
}
