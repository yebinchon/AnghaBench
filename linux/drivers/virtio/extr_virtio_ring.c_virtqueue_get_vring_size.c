
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned int num; } ;
struct TYPE_8__ {TYPE_3__ vring; } ;
struct TYPE_5__ {unsigned int num; } ;
struct TYPE_6__ {TYPE_1__ vring; } ;
struct vring_virtqueue {TYPE_4__ split; TYPE_2__ packed; scalar_t__ packed_ring; } ;
struct virtqueue {int dummy; } ;


 struct vring_virtqueue* to_vvq (struct virtqueue*) ;

unsigned int virtqueue_get_vring_size(struct virtqueue *_vq)
{

 struct vring_virtqueue *vq = to_vvq(_vq);

 return vq->packed_ring ? vq->packed.vring.num : vq->split.vring.num;
}
