
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_virtqueue {scalar_t__ packed_ring; int weak_barriers; } ;
struct virtqueue {int dummy; } ;


 struct vring_virtqueue* to_vvq (struct virtqueue*) ;
 int virtio_mb (int ) ;
 int virtqueue_poll_packed (struct virtqueue*,unsigned int) ;
 int virtqueue_poll_split (struct virtqueue*,unsigned int) ;

bool virtqueue_poll(struct virtqueue *_vq, unsigned last_used_idx)
{
 struct vring_virtqueue *vq = to_vvq(_vq);

 virtio_mb(vq->weak_barriers);
 return vq->packed_ring ? virtqueue_poll_packed(_vq, last_used_idx) :
     virtqueue_poll_split(_vq, last_used_idx);
}
