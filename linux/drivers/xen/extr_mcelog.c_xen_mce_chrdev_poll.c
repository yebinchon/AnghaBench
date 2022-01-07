
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {scalar_t__ next; } ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;
 int xen_mce_chrdev_wait ;
 TYPE_1__ xen_mcelog ;

__attribute__((used)) static __poll_t xen_mce_chrdev_poll(struct file *file, poll_table *wait)
{
 poll_wait(file, &xen_mce_chrdev_wait, wait);

 if (xen_mcelog.next)
  return EPOLLIN | EPOLLRDNORM;

 return 0;
}
