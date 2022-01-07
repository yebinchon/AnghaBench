
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct fb_open_file* private_data; } ;
struct fieldbus_dev {scalar_t__ dc_event; int dc_wq; } ;
struct fb_open_file {scalar_t__ dc_event; struct fieldbus_dev* fbdev; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLPRI ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t fieldbus_poll(struct file *filp, poll_table *wait)
{
 struct fb_open_file *of = filp->private_data;
 struct fieldbus_dev *fbdev = of->fbdev;
 __poll_t mask = EPOLLIN | EPOLLRDNORM | EPOLLOUT | EPOLLWRNORM;

 poll_wait(filp, &fbdev->dc_wq, wait);

 if (fbdev->dc_event != of->dc_event)
  mask |= EPOLLPRI | EPOLLERR;
 return mask;
}
