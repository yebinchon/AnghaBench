
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_virtqueue {scalar_t__ packed_ring; } ;
struct virtqueue {int dummy; } ;


 struct vring_virtqueue* to_vvq (struct virtqueue*) ;
 void* virtqueue_detach_unused_buf_packed (struct virtqueue*) ;
 void* virtqueue_detach_unused_buf_split (struct virtqueue*) ;

void *virtqueue_detach_unused_buf(struct virtqueue *_vq)
{
 struct vring_virtqueue *vq = to_vvq(_vq);

 return vq->packed_ring ? virtqueue_detach_unused_buf_packed(_vq) :
     virtqueue_detach_unused_buf_split(_vq);
}
