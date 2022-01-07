
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_recover_idr_lock; scalar_t__ ls_recover_list_count; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int recover_idr_empty(struct dlm_ls *ls)
{
 int empty = 1;

 spin_lock(&ls->ls_recover_idr_lock);
 if (ls->ls_recover_list_count)
  empty = 0;
 spin_unlock(&ls->ls_recover_idr_lock);

 return empty;
}
