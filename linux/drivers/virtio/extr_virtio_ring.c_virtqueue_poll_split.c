
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_5__ {TYPE_1__* used; } ;
struct TYPE_6__ {TYPE_2__ vring; } ;
struct vring_virtqueue {TYPE_3__ split; } ;
struct virtqueue {int vdev; } ;
struct TYPE_4__ {int idx; } ;


 struct vring_virtqueue* to_vvq (struct virtqueue*) ;
 scalar_t__ virtio16_to_cpu (int ,int ) ;

__attribute__((used)) static bool virtqueue_poll_split(struct virtqueue *_vq, unsigned last_used_idx)
{
 struct vring_virtqueue *vq = to_vvq(_vq);

 return (u16)last_used_idx != virtio16_to_cpu(_vq->vdev,
   vq->split.vring.used->idx);
}
