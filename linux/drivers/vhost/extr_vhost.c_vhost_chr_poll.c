
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_dev {int read_list; int wait; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__poll_t vhost_chr_poll(struct file *file, struct vhost_dev *dev,
       poll_table *wait)
{
 __poll_t mask = 0;

 poll_wait(file, &dev->wait, wait);

 if (!list_empty(&dev->read_list))
  mask |= EPOLLIN | EPOLLRDNORM;

 return mask;
}
