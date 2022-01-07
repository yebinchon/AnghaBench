
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* used; } ;
struct TYPE_8__ {TYPE_3__ vring; } ;
struct TYPE_5__ {int vdev; } ;
struct vring_virtqueue {scalar_t__ last_used_idx; TYPE_4__ split; TYPE_1__ vq; } ;
struct TYPE_6__ {int idx; } ;


 scalar_t__ virtio16_to_cpu (int ,int ) ;

__attribute__((used)) static inline bool more_used_split(const struct vring_virtqueue *vq)
{
 return vq->last_used_idx != virtio16_to_cpu(vq->vq.vdev,
   vq->split.vring.used->idx);
}
