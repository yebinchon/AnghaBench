
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {struct vring_desc* desc; } ;
struct TYPE_8__ {TYPE_3__* desc_state; TYPE_1__ vring; } ;
struct TYPE_6__ {int vdev; int num_free; } ;
struct vring_virtqueue {unsigned int free_head; TYPE_4__ split; TYPE_2__ vq; scalar_t__ indirect; } ;
struct vring_desc {int flags; int next; int len; } ;
typedef int __virtio16 ;
struct TYPE_7__ {struct vring_desc* indir_desc; int * data; } ;


 int BUG_ON (int) ;
 unsigned int VRING_DESC_F_INDIRECT ;
 unsigned int VRING_DESC_F_NEXT ;
 int cpu_to_virtio16 (int ,unsigned int) ;
 int kfree (struct vring_desc*) ;
 unsigned int virtio16_to_cpu (int ,int) ;
 int virtio32_to_cpu (int ,int ) ;
 int vring_unmap_one_split (struct vring_virtqueue*,struct vring_desc*) ;

__attribute__((used)) static void detach_buf_split(struct vring_virtqueue *vq, unsigned int head,
        void **ctx)
{
 unsigned int i, j;
 __virtio16 nextflag = cpu_to_virtio16(vq->vq.vdev, VRING_DESC_F_NEXT);


 vq->split.desc_state[head].data = ((void*)0);


 i = head;

 while (vq->split.vring.desc[i].flags & nextflag) {
  vring_unmap_one_split(vq, &vq->split.vring.desc[i]);
  i = virtio16_to_cpu(vq->vq.vdev, vq->split.vring.desc[i].next);
  vq->vq.num_free++;
 }

 vring_unmap_one_split(vq, &vq->split.vring.desc[i]);
 vq->split.vring.desc[i].next = cpu_to_virtio16(vq->vq.vdev,
      vq->free_head);
 vq->free_head = head;


 vq->vq.num_free++;

 if (vq->indirect) {
  struct vring_desc *indir_desc =
    vq->split.desc_state[head].indir_desc;
  u32 len;


  if (!indir_desc)
   return;

  len = virtio32_to_cpu(vq->vq.vdev,
    vq->split.vring.desc[head].len);

  BUG_ON(!(vq->split.vring.desc[head].flags &
    cpu_to_virtio16(vq->vq.vdev, VRING_DESC_F_INDIRECT)));
  BUG_ON(len == 0 || len % sizeof(struct vring_desc));

  for (j = 0; j < len / sizeof(struct vring_desc); j++)
   vring_unmap_one_split(vq, &indir_desc[j]);

  kfree(indir_desc);
  vq->split.desc_state[head].indir_desc = ((void*)0);
 } else if (ctx) {
  *ctx = vq->split.desc_state[head].indir_desc;
 }
}
