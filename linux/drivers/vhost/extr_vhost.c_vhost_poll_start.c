
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_poll {int wait; int table; scalar_t__ wqh; } ;
struct file {int dummy; } ;
typedef int __poll_t ;


 int EINVAL ;
 int EPOLLERR ;
 int poll_to_key (int) ;
 int vfs_poll (struct file*,int *) ;
 int vhost_poll_stop (struct vhost_poll*) ;
 int vhost_poll_wakeup (int *,int ,int ,int ) ;

int vhost_poll_start(struct vhost_poll *poll, struct file *file)
{
 __poll_t mask;

 if (poll->wqh)
  return 0;

 mask = vfs_poll(file, &poll->table);
 if (mask)
  vhost_poll_wakeup(&poll->wait, 0, 0, poll_to_key(mask));
 if (mask & EPOLLERR) {
  vhost_poll_stop(poll);
  return -EINVAL;
 }

 return 0;
}
