
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_poll {int * wqh; int wait; } ;


 int remove_wait_queue (int *,int *) ;

void vhost_poll_stop(struct vhost_poll *poll)
{
 if (poll->wqh) {
  remove_wait_queue(poll->wqh, &poll->wait);
  poll->wqh = ((void*)0);
 }
}
