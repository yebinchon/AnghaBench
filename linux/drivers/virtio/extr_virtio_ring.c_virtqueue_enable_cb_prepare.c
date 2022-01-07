
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_virtqueue {scalar_t__ packed_ring; } ;
struct virtqueue {int dummy; } ;


 struct vring_virtqueue* to_vvq (struct virtqueue*) ;
 int virtqueue_enable_cb_prepare_packed (struct virtqueue*) ;
 int virtqueue_enable_cb_prepare_split (struct virtqueue*) ;

unsigned virtqueue_enable_cb_prepare(struct virtqueue *_vq)
{
 struct vring_virtqueue *vq = to_vvq(_vq);

 return vq->packed_ring ? virtqueue_enable_cb_prepare_packed(_vq) :
     virtqueue_enable_cb_prepare_split(_vq);
}
