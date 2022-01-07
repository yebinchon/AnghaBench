
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct f_hidg* private_data; } ;
struct f_hidg {int write_queue; int read_queue; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 scalar_t__ READ_COND ;
 scalar_t__ WRITE_COND ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t f_hidg_poll(struct file *file, poll_table *wait)
{
 struct f_hidg *hidg = file->private_data;
 __poll_t ret = 0;

 poll_wait(file, &hidg->read_queue, wait);
 poll_wait(file, &hidg->write_queue, wait);

 if (WRITE_COND)
  ret |= EPOLLOUT | EPOLLWRNORM;

 if (READ_COND)
  ret |= EPOLLIN | EPOLLRDNORM;

 return ret;
}
