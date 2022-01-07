
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_virtqueue {scalar_t__ packed_ring; } ;
struct virtqueue {int dummy; } ;


 struct vring_virtqueue* to_vvq (struct virtqueue*) ;
 int virtqueue_disable_cb_packed (struct virtqueue*) ;
 int virtqueue_disable_cb_split (struct virtqueue*) ;

void virtqueue_disable_cb(struct virtqueue *_vq)
{
 struct vring_virtqueue *vq = to_vvq(_vq);

 if (vq->packed_ring)
  virtqueue_disable_cb_packed(_vq);
 else
  virtqueue_disable_cb_split(_vq);
}
