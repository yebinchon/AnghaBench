
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_3__* desc_extra; struct vring_desc_state_packed* desc_state; } ;
struct TYPE_4__ {unsigned int num_free; } ;
struct vring_virtqueue {unsigned int free_head; TYPE_2__ packed; scalar_t__ use_dma_api; scalar_t__ indirect; TYPE_1__ vq; } ;
struct vring_packed_desc {int dummy; } ;
struct vring_desc_state_packed {size_t last; unsigned int next; unsigned int num; struct vring_packed_desc* indir_desc; int * data; } ;
struct TYPE_6__ {int len; } ;


 int kfree (struct vring_packed_desc*) ;
 scalar_t__ unlikely (scalar_t__) ;
 int vring_unmap_desc_packed (struct vring_virtqueue*,struct vring_packed_desc*) ;
 int vring_unmap_state_packed (struct vring_virtqueue*,TYPE_3__*) ;

__attribute__((used)) static void detach_buf_packed(struct vring_virtqueue *vq,
         unsigned int id, void **ctx)
{
 struct vring_desc_state_packed *state = ((void*)0);
 struct vring_packed_desc *desc;
 unsigned int i, curr;

 state = &vq->packed.desc_state[id];


 state->data = ((void*)0);

 vq->packed.desc_state[state->last].next = vq->free_head;
 vq->free_head = id;
 vq->vq.num_free += state->num;

 if (unlikely(vq->use_dma_api)) {
  curr = id;
  for (i = 0; i < state->num; i++) {
   vring_unmap_state_packed(vq,
    &vq->packed.desc_extra[curr]);
   curr = vq->packed.desc_state[curr].next;
  }
 }

 if (vq->indirect) {
  u32 len;


  desc = state->indir_desc;
  if (!desc)
   return;

  if (vq->use_dma_api) {
   len = vq->packed.desc_extra[id].len;
   for (i = 0; i < len / sizeof(struct vring_packed_desc);
     i++)
    vring_unmap_desc_packed(vq, &desc[i]);
  }
  kfree(desc);
  state->indir_desc = ((void*)0);
 } else if (ctx) {
  *ctx = state->indir_desc;
 }
}
