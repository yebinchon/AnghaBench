
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int list_empty (int *) ;
 int ops_lock ;
 int poll_wait (struct file*,int *,int *) ;
 int send_list ;
 int send_wq ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static __poll_t dev_poll(struct file *file, poll_table *wait)
{
 __poll_t mask = 0;

 poll_wait(file, &send_wq, wait);

 spin_lock(&ops_lock);
 if (!list_empty(&send_list))
  mask = EPOLLIN | EPOLLRDNORM;
 spin_unlock(&ops_lock);

 return mask;
}
