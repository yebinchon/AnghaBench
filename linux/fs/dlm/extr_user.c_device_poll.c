
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct dlm_user_proc* private_data; } ;
struct dlm_user_proc {int asts_spin; int asts; int wait; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static __poll_t device_poll(struct file *file, poll_table *wait)
{
 struct dlm_user_proc *proc = file->private_data;

 poll_wait(file, &proc->wait, wait);

 spin_lock(&proc->asts_spin);
 if (!list_empty(&proc->asts)) {
  spin_unlock(&proc->asts_spin);
  return EPOLLIN | EPOLLRDNORM;
 }
 spin_unlock(&proc->asts_spin);
 return 0;
}
