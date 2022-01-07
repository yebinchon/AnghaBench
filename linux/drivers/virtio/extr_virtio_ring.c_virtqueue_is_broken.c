
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_virtqueue {int broken; } ;
struct virtqueue {int dummy; } ;


 struct vring_virtqueue* to_vvq (struct virtqueue*) ;

bool virtqueue_is_broken(struct virtqueue *_vq)
{
 struct vring_virtqueue *vq = to_vvq(_vq);

 return vq->broken;
}
