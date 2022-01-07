
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct event_device_data* private_data; } ;
struct event_device_data {int events; int exist; int wq; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLPRI ;
 int EPOLLRDNORM ;
 int event_queue_empty (int ) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t event_poll(struct file *filp, poll_table *wait)
{
 struct event_device_data *dev_data = filp->private_data;
 __poll_t mask = 0;

 poll_wait(filp, &dev_data->wq, wait);
 if (!dev_data->exist)
  return EPOLLHUP;
 if (!event_queue_empty(dev_data->events))
  mask |= EPOLLIN | EPOLLRDNORM | EPOLLPRI;
 return mask;
}
