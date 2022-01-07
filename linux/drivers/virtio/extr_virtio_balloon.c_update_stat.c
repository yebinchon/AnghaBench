
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct virtio_balloon {int vdev; TYPE_1__* stats; } ;
struct TYPE_2__ {int val; int tag; } ;


 int BUG_ON (int) ;
 int VIRTIO_BALLOON_S_NR ;
 int cpu_to_virtio16 (int ,int ) ;
 int cpu_to_virtio64 (int ,int ) ;

__attribute__((used)) static inline void update_stat(struct virtio_balloon *vb, int idx,
          u16 tag, u64 val)
{
 BUG_ON(idx >= VIRTIO_BALLOON_S_NR);
 vb->stats[idx].tag = cpu_to_virtio16(vb->vdev, tag);
 vb->stats[idx].val = cpu_to_virtio64(vb->vdev, val);
}
