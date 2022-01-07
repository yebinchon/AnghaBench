
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num_free; } ;
struct vring_virtqueue {TYPE_1__ vq; scalar_t__ indirect; } ;
struct virtqueue {int dummy; } ;


 struct vring_virtqueue* to_vvq (struct virtqueue*) ;

__attribute__((used)) static inline bool virtqueue_use_indirect(struct virtqueue *_vq,
       unsigned int total_sg)
{
 struct vring_virtqueue *vq = to_vvq(_vq);





 return (vq->indirect && total_sg > 1 && vq->vq.num_free);
}
