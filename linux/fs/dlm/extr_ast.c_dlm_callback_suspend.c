
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {scalar_t__ ls_callback_wq; int ls_flags; } ;


 int LSFL_CB_DELAY ;
 int flush_workqueue (scalar_t__) ;
 int set_bit (int ,int *) ;

void dlm_callback_suspend(struct dlm_ls *ls)
{
 set_bit(LSFL_CB_DELAY, &ls->ls_flags);

 if (ls->ls_callback_wq)
  flush_workqueue(ls->ls_callback_wq);
}
