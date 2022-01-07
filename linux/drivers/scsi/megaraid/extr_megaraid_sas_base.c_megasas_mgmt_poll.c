
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int megasas_poll_wait ;
 scalar_t__ megasas_poll_wait_aen ;
 int poll_aen_lock ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static __poll_t megasas_mgmt_poll(struct file *file, poll_table *wait)
{
 __poll_t mask;
 unsigned long flags;

 poll_wait(file, &megasas_poll_wait, wait);
 spin_lock_irqsave(&poll_aen_lock, flags);
 if (megasas_poll_wait_aen)
  mask = (EPOLLIN | EPOLLRDNORM);
 else
  mask = 0;
 megasas_poll_wait_aen = 0;
 spin_unlock_irqrestore(&poll_aen_lock, flags);
 return mask;
}
