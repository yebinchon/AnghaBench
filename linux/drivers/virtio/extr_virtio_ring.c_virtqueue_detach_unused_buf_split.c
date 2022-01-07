
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {unsigned int num; TYPE_2__* avail; } ;
struct TYPE_10__ {TYPE_4__ vring; int avail_idx_shadow; TYPE_1__* desc_state; } ;
struct TYPE_8__ {unsigned int num_free; } ;
struct vring_virtqueue {TYPE_5__ split; TYPE_3__ vq; } ;
struct virtqueue {int vdev; } ;
struct TYPE_7__ {int idx; } ;
struct TYPE_6__ {void* data; } ;


 int BUG_ON (int) ;
 int END_USE (struct vring_virtqueue*) ;
 int START_USE (struct vring_virtqueue*) ;
 int cpu_to_virtio16 (int ,int ) ;
 int detach_buf_split (struct vring_virtqueue*,unsigned int,int *) ;
 struct vring_virtqueue* to_vvq (struct virtqueue*) ;

__attribute__((used)) static void *virtqueue_detach_unused_buf_split(struct virtqueue *_vq)
{
 struct vring_virtqueue *vq = to_vvq(_vq);
 unsigned int i;
 void *buf;

 START_USE(vq);

 for (i = 0; i < vq->split.vring.num; i++) {
  if (!vq->split.desc_state[i].data)
   continue;

  buf = vq->split.desc_state[i].data;
  detach_buf_split(vq, i, ((void*)0));
  vq->split.avail_idx_shadow--;
  vq->split.vring.avail->idx = cpu_to_virtio16(_vq->vdev,
    vq->split.avail_idx_shadow);
  END_USE(vq);
  return buf;
 }

 BUG_ON(vq->vq.num_free != vq->split.vring.num);

 END_USE(vq);
 return ((void*)0);
}
