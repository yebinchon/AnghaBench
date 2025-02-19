
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vhost_work_fn_t ;
struct vhost_poll {int work; int * wqh; struct vhost_dev* dev; int mask; int table; int wait; } ;
struct vhost_dev {int dummy; } ;
typedef int __poll_t ;


 int init_poll_funcptr (int *,int ) ;
 int init_waitqueue_func_entry (int *,int ) ;
 int vhost_poll_func ;
 int vhost_poll_wakeup ;
 int vhost_work_init (int *,int ) ;

void vhost_poll_init(struct vhost_poll *poll, vhost_work_fn_t fn,
       __poll_t mask, struct vhost_dev *dev)
{
 init_waitqueue_func_entry(&poll->wait, vhost_poll_wakeup);
 init_poll_funcptr(&poll->table, vhost_poll_func);
 poll->mask = mask;
 poll->dev = dev;
 poll->wqh = ((void*)0);

 vhost_work_init(&poll->work, fn);
}
