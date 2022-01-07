
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_callback_wq; } ;


 int ENOMEM ;
 int WQ_HIGHPRI ;
 int WQ_MEM_RECLAIM ;
 int alloc_workqueue (char*,int,int ) ;
 int log_print (char*) ;

int dlm_callback_start(struct dlm_ls *ls)
{
 ls->ls_callback_wq = alloc_workqueue("dlm_callback",
          WQ_HIGHPRI | WQ_MEM_RECLAIM, 0);
 if (!ls->ls_callback_wq) {
  log_print("can't start dlm_callback workqueue");
  return -ENOMEM;
 }
 return 0;
}
