
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_recoverd_task; } ;


 int kthread_stop (int ) ;

void dlm_recoverd_stop(struct dlm_ls *ls)
{
 kthread_stop(ls->ls_recoverd_task);
}
