
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_dev {int nvqs; TYPE_1__** vqs; } ;
struct TYPE_2__ {int poll; scalar_t__ handle_kick; scalar_t__ kick; } ;


 int vhost_poll_flush (int *) ;
 int vhost_poll_stop (int *) ;

void vhost_dev_stop(struct vhost_dev *dev)
{
 int i;

 for (i = 0; i < dev->nvqs; ++i) {
  if (dev->vqs[i]->kick && dev->vqs[i]->handle_kick) {
   vhost_poll_stop(&dev->vqs[i]->poll);
   vhost_poll_flush(&dev->vqs[i]->poll);
  }
 }
}
