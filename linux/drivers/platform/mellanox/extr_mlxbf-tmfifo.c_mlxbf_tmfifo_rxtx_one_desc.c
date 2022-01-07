
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vring_desc {int next; int flags; int len; } ;
struct vring {struct vring_desc* desc; } ;
struct virtio_device {int dummy; } ;
struct mlxbf_tmfifo_vring {size_t vdev_id; scalar_t__ pkt_len; scalar_t__ rem_len; scalar_t__ cur_len; struct vring_desc* desc; int vq; struct mlxbf_tmfifo* fifo; } ;
struct mlxbf_tmfifo {int spin_lock; int ** vring; TYPE_1__** vdev; } ;
struct TYPE_2__ {struct virtio_device vdev; } ;


 scalar_t__ VRING_DESC_F_NEXT ;
 struct vring_desc* mlxbf_tmfifo_get_next_pkt (struct mlxbf_tmfifo_vring*,int) ;
 int mlxbf_tmfifo_release_pending_pkt (struct mlxbf_tmfifo_vring*) ;
 int mlxbf_tmfifo_rxtx_header (struct mlxbf_tmfifo_vring*,struct vring_desc*,int,int*) ;
 int mlxbf_tmfifo_rxtx_word (struct mlxbf_tmfifo_vring*,struct vring_desc*,int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ virtio16_to_cpu (struct virtio_device*,int ) ;
 scalar_t__ virtio32_to_cpu (struct virtio_device*,int ) ;
 struct vring* virtqueue_get_vring (int ) ;
 int vring_interrupt (int ,int ) ;

__attribute__((used)) static bool mlxbf_tmfifo_rxtx_one_desc(struct mlxbf_tmfifo_vring *vring,
           bool is_rx, int *avail)
{
 const struct vring *vr = virtqueue_get_vring(vring->vq);
 struct mlxbf_tmfifo *fifo = vring->fifo;
 struct virtio_device *vdev;
 bool vring_change = 0;
 struct vring_desc *desc;
 unsigned long flags;
 u32 len, idx;

 vdev = &fifo->vdev[vring->vdev_id]->vdev;


 if (!vring->desc) {
  desc = mlxbf_tmfifo_get_next_pkt(vring, is_rx);
  if (!desc)
   return 0;
 } else {
  desc = vring->desc;
 }


 if (vring->pkt_len == 0) {
  mlxbf_tmfifo_rxtx_header(vring, desc, is_rx, &vring_change);
  (*avail)--;


  if (vring_change)
   return 0;
  goto mlxbf_tmfifo_desc_done;
 }


 len = virtio32_to_cpu(vdev, desc->len);
 if (len > vring->rem_len)
  len = vring->rem_len;


 if (vring->cur_len < len) {
  mlxbf_tmfifo_rxtx_word(vring, desc, is_rx, len);
  (*avail)--;
 }


 if (vring->cur_len == len) {
  vring->cur_len = 0;
  vring->rem_len -= len;


  if (vring->rem_len > 0 &&
      (virtio16_to_cpu(vdev, desc->flags) & VRING_DESC_F_NEXT)) {
   idx = virtio16_to_cpu(vdev, desc->next);
   desc = &vr->desc[idx];
   goto mlxbf_tmfifo_desc_done;
  }


  mlxbf_tmfifo_release_pending_pkt(vring);
  desc = ((void*)0);
  fifo->vring[is_rx] = ((void*)0);


  spin_lock_irqsave(&fifo->spin_lock, flags);
  vring_interrupt(0, vring->vq);
  spin_unlock_irqrestore(&fifo->spin_lock, flags);
 }

mlxbf_tmfifo_desc_done:

 vring->desc = desc;

 return 1;
}
