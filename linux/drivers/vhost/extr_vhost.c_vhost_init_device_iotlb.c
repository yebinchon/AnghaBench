
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int mutex; struct vhost_umem* iotlb; } ;
struct vhost_umem {int dummy; } ;
struct vhost_dev {int nvqs; struct vhost_virtqueue** vqs; struct vhost_umem* iotlb; } ;


 int ENOMEM ;
 int __vhost_vq_meta_reset (struct vhost_virtqueue*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vhost_umem* vhost_umem_alloc () ;
 int vhost_umem_clean (struct vhost_umem*) ;

int vhost_init_device_iotlb(struct vhost_dev *d, bool enabled)
{
 struct vhost_umem *niotlb, *oiotlb;
 int i;

 niotlb = vhost_umem_alloc();
 if (!niotlb)
  return -ENOMEM;

 oiotlb = d->iotlb;
 d->iotlb = niotlb;

 for (i = 0; i < d->nvqs; ++i) {
  struct vhost_virtqueue *vq = d->vqs[i];

  mutex_lock(&vq->mutex);
  vq->iotlb = niotlb;
  __vhost_vq_meta_reset(vq);
  mutex_unlock(&vq->mutex);
 }

 vhost_umem_clean(oiotlb);

 return 0;
}
