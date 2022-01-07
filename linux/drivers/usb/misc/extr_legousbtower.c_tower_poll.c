
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lego_usb_tower {scalar_t__ read_packet_length; int interrupt_out_busy; int write_wait; int read_wait; scalar_t__ disconnected; } ;
struct file {struct lego_usb_tower* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int poll_wait (struct file*,int *,int *) ;
 int tower_check_for_read_packet (struct lego_usb_tower*) ;

__attribute__((used)) static __poll_t tower_poll (struct file *file, poll_table *wait)
{
 struct lego_usb_tower *dev;
 __poll_t mask = 0;

 dev = file->private_data;

 if (dev->disconnected)
  return EPOLLERR | EPOLLHUP;

 poll_wait(file, &dev->read_wait, wait);
 poll_wait(file, &dev->write_wait, wait);

 tower_check_for_read_packet(dev);
 if (dev->read_packet_length > 0) {
  mask |= EPOLLIN | EPOLLRDNORM;
 }
 if (!dev->interrupt_out_busy) {
  mask |= EPOLLOUT | EPOLLWRNORM;
 }

 return mask;
}
