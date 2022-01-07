
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_poll {int work; int dev; } ;


 int vhost_work_queue (int ,int *) ;

void vhost_poll_queue(struct vhost_poll *poll)
{
 vhost_work_queue(poll->dev, &poll->work);
}
