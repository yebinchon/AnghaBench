
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {scalar_t__ ls_callback_wq; } ;


 int destroy_workqueue (scalar_t__) ;

void dlm_callback_stop(struct dlm_ls *ls)
{
 if (ls->ls_callback_wq)
  destroy_workqueue(ls->ls_callback_wq);
}
