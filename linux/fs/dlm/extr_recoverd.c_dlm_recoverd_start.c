
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct dlm_ls {struct task_struct* ls_recoverd_task; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int dlm_recoverd ;
 struct task_struct* kthread_run (int ,struct dlm_ls*,char*) ;

int dlm_recoverd_start(struct dlm_ls *ls)
{
 struct task_struct *p;
 int error = 0;

 p = kthread_run(dlm_recoverd, ls, "dlm_recoverd");
 if (IS_ERR(p))
  error = PTR_ERR(p);
 else
                ls->ls_recoverd_task = p;
 return error;
}
