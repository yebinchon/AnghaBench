
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {scalar_t__ handle_kick; int poll; int mutex; struct vhost_dev* dev; int * heads; int * indirect; int * log; } ;
struct vhost_dev {int nvqs; int iov_limit; int weight; int byte_weight; struct vhost_virtqueue** vqs; int iotlb_lock; int pending_list; int read_list; int wait; int work_list; int * worker; int * mm; int * iotlb; int * umem; int * log_ctx; int mutex; } ;


 int EPOLLIN ;
 int INIT_LIST_HEAD (int *) ;
 int init_llist_head (int *) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int vhost_poll_init (int *,scalar_t__,int ,struct vhost_dev*) ;
 int vhost_vq_reset (struct vhost_dev*,struct vhost_virtqueue*) ;

void vhost_dev_init(struct vhost_dev *dev,
      struct vhost_virtqueue **vqs, int nvqs,
      int iov_limit, int weight, int byte_weight)
{
 struct vhost_virtqueue *vq;
 int i;

 dev->vqs = vqs;
 dev->nvqs = nvqs;
 mutex_init(&dev->mutex);
 dev->log_ctx = ((void*)0);
 dev->umem = ((void*)0);
 dev->iotlb = ((void*)0);
 dev->mm = ((void*)0);
 dev->worker = ((void*)0);
 dev->iov_limit = iov_limit;
 dev->weight = weight;
 dev->byte_weight = byte_weight;
 init_llist_head(&dev->work_list);
 init_waitqueue_head(&dev->wait);
 INIT_LIST_HEAD(&dev->read_list);
 INIT_LIST_HEAD(&dev->pending_list);
 spin_lock_init(&dev->iotlb_lock);


 for (i = 0; i < dev->nvqs; ++i) {
  vq = dev->vqs[i];
  vq->log = ((void*)0);
  vq->indirect = ((void*)0);
  vq->heads = ((void*)0);
  vq->dev = dev;
  mutex_init(&vq->mutex);
  vhost_vq_reset(dev, vq);
  if (vq->handle_kick)
   vhost_poll_init(&vq->poll, vq->handle_kick,
     EPOLLIN, dev);
 }
}
