
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_recoverd_active; int ls_wait_general; } ;


 int mutex_lock (int *) ;
 int wake_up (int *) ;

void dlm_recoverd_suspend(struct dlm_ls *ls)
{
 wake_up(&ls->ls_wait_general);
 mutex_lock(&ls->ls_recoverd_active);
}
