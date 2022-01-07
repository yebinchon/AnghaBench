
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int heads; struct vhost_dev* dev; } ;
struct vhost_net_virtqueue {int done_idx; struct vhost_virtqueue vq; } ;
struct vhost_dev {int dummy; } ;


 int vhost_add_used_and_signal_n (struct vhost_dev*,struct vhost_virtqueue*,int ,int ) ;

__attribute__((used)) static void vhost_net_signal_used(struct vhost_net_virtqueue *nvq)
{
 struct vhost_virtqueue *vq = &nvq->vq;
 struct vhost_dev *dev = vq->dev;

 if (!nvq->done_idx)
  return;

 vhost_add_used_and_signal_n(dev, vq, vq->heads, nvq->done_idx);
 nvq->done_idx = 0;
}
