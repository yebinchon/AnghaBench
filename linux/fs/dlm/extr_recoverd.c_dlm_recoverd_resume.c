
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_recoverd_active; } ;


 int mutex_unlock (int *) ;

void dlm_recoverd_resume(struct dlm_ls *ls)
{
 mutex_unlock(&ls->ls_recoverd_active);
}
