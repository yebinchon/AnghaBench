
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcs_poll_data {int event; int waitq; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int DEFAULT_POLLMASK ;
 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLPRI ;


 int poll_wait (struct file*,int *,int *) ;
 struct vcs_poll_data* vcs_poll_data_get (struct file*) ;

__attribute__((used)) static __poll_t
vcs_poll(struct file *file, poll_table *wait)
{
 struct vcs_poll_data *poll = vcs_poll_data_get(file);
 __poll_t ret = DEFAULT_POLLMASK|EPOLLERR;

 if (poll) {
  poll_wait(file, &poll->waitq, wait);
  switch (poll->event) {
  case 128:
   ret = DEFAULT_POLLMASK|EPOLLPRI;
   break;
  case 129:
   ret = DEFAULT_POLLMASK|EPOLLHUP|EPOLLERR;
   break;
  case 0:
   ret = DEFAULT_POLLMASK;
   break;
  }
 }
 return ret;
}
