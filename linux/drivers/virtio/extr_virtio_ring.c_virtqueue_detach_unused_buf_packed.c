
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {unsigned int num; } ;
struct TYPE_7__ {TYPE_4__ vring; TYPE_1__* desc_state; } ;
struct TYPE_6__ {unsigned int num_free; } ;
struct vring_virtqueue {TYPE_3__ packed; TYPE_2__ vq; } ;
struct virtqueue {int dummy; } ;
struct TYPE_5__ {void* data; } ;


 int BUG_ON (int) ;
 int END_USE (struct vring_virtqueue*) ;
 int START_USE (struct vring_virtqueue*) ;
 int detach_buf_packed (struct vring_virtqueue*,unsigned int,int *) ;
 struct vring_virtqueue* to_vvq (struct virtqueue*) ;

__attribute__((used)) static void *virtqueue_detach_unused_buf_packed(struct virtqueue *_vq)
{
 struct vring_virtqueue *vq = to_vvq(_vq);
 unsigned int i;
 void *buf;

 START_USE(vq);

 for (i = 0; i < vq->packed.vring.num; i++) {
  if (!vq->packed.desc_state[i].data)
   continue;

  buf = vq->packed.desc_state[i].data;
  detach_buf_packed(vq, i, ((void*)0));
  END_USE(vq);
  return buf;
 }

 BUG_ON(vq->vq.num_free != vq->packed.vring.num);

 END_USE(vq);
 return ((void*)0);
}
