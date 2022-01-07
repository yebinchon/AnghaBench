
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowarrior {int write_busy; int present; int write_wait; int read_wait; } ;
struct file {struct iowarrior* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 scalar_t__ MAX_WRITES_IN_FLIGHT ;
 scalar_t__ atomic_read (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int read_index (struct iowarrior*) ;

__attribute__((used)) static __poll_t iowarrior_poll(struct file *file, poll_table * wait)
{
 struct iowarrior *dev = file->private_data;
 __poll_t mask = 0;

 if (!dev->present)
  return EPOLLERR | EPOLLHUP;

 poll_wait(file, &dev->read_wait, wait);
 poll_wait(file, &dev->write_wait, wait);

 if (!dev->present)
  return EPOLLERR | EPOLLHUP;

 if (read_index(dev) != -1)
  mask |= EPOLLIN | EPOLLRDNORM;

 if (atomic_read(&dev->write_busy) < MAX_WRITES_IN_FLIGHT)
  mask |= EPOLLOUT | EPOLLWRNORM;
 return mask;
}
