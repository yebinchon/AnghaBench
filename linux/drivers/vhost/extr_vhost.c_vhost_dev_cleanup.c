
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vhost_dev {int nvqs; int * mm; int * worker; int work_list; int wait; int * iotlb; int * umem; int * log_ctx; TYPE_1__** vqs; } ;
struct TYPE_2__ {int * call_ctx; scalar_t__ kick; int * error_ctx; } ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int WARN_ON (int) ;
 int eventfd_ctx_put (int *) ;
 int fput (scalar_t__) ;
 int kthread_stop (int *) ;
 int llist_empty (int *) ;
 int mmput (int *) ;
 int vhost_clear_msg (struct vhost_dev*) ;
 int vhost_dev_free_iovecs (struct vhost_dev*) ;
 int vhost_umem_clean (int *) ;
 int vhost_vq_reset (struct vhost_dev*,TYPE_1__*) ;
 int wake_up_interruptible_poll (int *,int) ;

void vhost_dev_cleanup(struct vhost_dev *dev)
{
 int i;

 for (i = 0; i < dev->nvqs; ++i) {
  if (dev->vqs[i]->error_ctx)
   eventfd_ctx_put(dev->vqs[i]->error_ctx);
  if (dev->vqs[i]->kick)
   fput(dev->vqs[i]->kick);
  if (dev->vqs[i]->call_ctx)
   eventfd_ctx_put(dev->vqs[i]->call_ctx);
  vhost_vq_reset(dev, dev->vqs[i]);
 }
 vhost_dev_free_iovecs(dev);
 if (dev->log_ctx)
  eventfd_ctx_put(dev->log_ctx);
 dev->log_ctx = ((void*)0);

 vhost_umem_clean(dev->umem);
 dev->umem = ((void*)0);
 vhost_umem_clean(dev->iotlb);
 dev->iotlb = ((void*)0);
 vhost_clear_msg(dev);
 wake_up_interruptible_poll(&dev->wait, EPOLLIN | EPOLLRDNORM);
 WARN_ON(!llist_empty(&dev->work_list));
 if (dev->worker) {
  kthread_stop(dev->worker);
  dev->worker = ((void*)0);
 }
 if (dev->mm)
  mmput(dev->mm);
 dev->mm = ((void*)0);
}
