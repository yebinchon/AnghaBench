
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_virtqueue {int broken; int (* notify ) (struct virtqueue*) ;} ;
struct virtqueue {int dummy; } ;


 int stub1 (struct virtqueue*) ;
 struct vring_virtqueue* to_vvq (struct virtqueue*) ;
 scalar_t__ unlikely (int) ;

bool virtqueue_notify(struct virtqueue *_vq)
{
 struct vring_virtqueue *vq = to_vvq(_vq);

 if (unlikely(vq->broken))
  return 0;


 if (!vq->notify(_vq)) {
  vq->broken = 1;
  return 0;
 }
 return 1;
}
