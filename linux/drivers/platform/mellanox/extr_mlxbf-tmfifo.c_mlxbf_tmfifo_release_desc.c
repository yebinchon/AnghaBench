
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef struct vring_desc* u32 ;
typedef size_t u16 ;
struct vring_desc {int dummy; } ;
struct vring {size_t num; int desc; TYPE_2__* used; } ;
struct virtio_device {int dummy; } ;
struct mlxbf_tmfifo_vring {TYPE_3__* vq; } ;
struct TYPE_6__ {struct virtio_device* vdev; } ;
struct TYPE_5__ {int idx; TYPE_1__* ring; } ;
struct TYPE_4__ {void* len; void* id; } ;


 int cpu_to_virtio16 (struct virtio_device*,size_t) ;
 void* cpu_to_virtio32 (struct virtio_device*,struct vring_desc*) ;
 int mb () ;
 size_t virtio16_to_cpu (struct virtio_device*,int ) ;
 struct vring* virtqueue_get_vring (TYPE_3__*) ;

__attribute__((used)) static void mlxbf_tmfifo_release_desc(struct mlxbf_tmfifo_vring *vring,
          struct vring_desc *desc, u32 len)
{
 const struct vring *vr = virtqueue_get_vring(vring->vq);
 struct virtio_device *vdev = vring->vq->vdev;
 u16 idx, vr_idx;

 vr_idx = virtio16_to_cpu(vdev, vr->used->idx);
 idx = vr_idx % vr->num;
 vr->used->ring[idx].id = cpu_to_virtio32(vdev, desc - vr->desc);
 vr->used->ring[idx].len = cpu_to_virtio32(vdev, len);






 mb();
 vr->used->idx = cpu_to_virtio16(vdev, vr_idx + 1);
}
