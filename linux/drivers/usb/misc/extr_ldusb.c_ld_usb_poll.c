
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ld_usb {scalar_t__ ring_head; scalar_t__ ring_tail; int interrupt_out_busy; int write_wait; int read_wait; scalar_t__ disconnected; } ;
struct file {struct ld_usb* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t ld_usb_poll(struct file *file, poll_table *wait)
{
 struct ld_usb *dev;
 __poll_t mask = 0;

 dev = file->private_data;

 if (dev->disconnected)
  return EPOLLERR | EPOLLHUP;

 poll_wait(file, &dev->read_wait, wait);
 poll_wait(file, &dev->write_wait, wait);

 if (dev->ring_head != dev->ring_tail)
  mask |= EPOLLIN | EPOLLRDNORM;
 if (!dev->interrupt_out_busy)
  mask |= EPOLLOUT | EPOLLWRNORM;

 return mask;
}
