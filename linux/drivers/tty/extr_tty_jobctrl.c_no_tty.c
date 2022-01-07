
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 struct task_struct* current ;
 int disassociate_ctty (int ) ;
 int proc_clear_tty (struct task_struct*) ;

void no_tty(void)
{



 struct task_struct *tsk = current;
 disassociate_ctty(0);
 proc_clear_tty(tsk);
}
