
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_requestqueue_mutex; int ls_requestqueue; } ;


 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule () ;

void dlm_wait_requestqueue(struct dlm_ls *ls)
{
 for (;;) {
  mutex_lock(&ls->ls_requestqueue_mutex);
  if (list_empty(&ls->ls_requestqueue))
   break;
  mutex_unlock(&ls->ls_requestqueue_mutex);
  schedule();
 }
 mutex_unlock(&ls->ls_requestqueue_mutex);
}
