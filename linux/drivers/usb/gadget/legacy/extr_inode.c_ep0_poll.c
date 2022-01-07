
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct dev_data* private_data; } ;
struct dev_data {scalar_t__ state; scalar_t__ ev_next; int lock; scalar_t__ setup_can_stall; scalar_t__ setup_in; scalar_t__ setup_abort; int wait; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int DEFAULT_POLLMASK ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 scalar_t__ STATE_DEV_OPENED ;
 scalar_t__ STATE_DEV_SETUP ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static __poll_t
ep0_poll (struct file *fd, poll_table *wait)
{
       struct dev_data *dev = fd->private_data;
       __poll_t mask = 0;

 if (dev->state <= STATE_DEV_OPENED)
  return DEFAULT_POLLMASK;

 poll_wait(fd, &dev->wait, wait);

 spin_lock_irq(&dev->lock);


 if (dev->setup_abort) {
  dev->setup_abort = 0;
  mask = EPOLLHUP;
  goto out;
 }

 if (dev->state == STATE_DEV_SETUP) {
  if (dev->setup_in || dev->setup_can_stall)
   mask = EPOLLOUT;
 } else {
  if (dev->ev_next != 0)
   mask = EPOLLIN;
 }
out:
 spin_unlock_irq(&dev->lock);
 return mask;
}
