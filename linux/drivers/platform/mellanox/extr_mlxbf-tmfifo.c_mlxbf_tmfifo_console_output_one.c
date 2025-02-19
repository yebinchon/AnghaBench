
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct vring_desc {int next; int flags; int len; int addr; } ;
struct vring {struct vring_desc* desc; } ;
struct virtio_device {int dummy; } ;
struct mlxbf_tmfifo_vring {int vq; } ;
struct TYPE_2__ {size_t head; scalar_t__ buf; int tail; } ;
struct mlxbf_tmfifo_vdev {TYPE_1__ tx_buf; struct virtio_device vdev; } ;


 size_t CIRC_SPACE_TO_END (size_t,int ,size_t) ;
 size_t MLXBF_TMFIFO_CON_TX_BUF_SIZE ;
 size_t VRING_DESC_F_NEXT ;
 int memcpy (scalar_t__,void*,size_t) ;
 void* phys_to_virt (int ) ;
 size_t virtio16_to_cpu (struct virtio_device*,int ) ;
 size_t virtio32_to_cpu (struct virtio_device*,int ) ;
 int virtio64_to_cpu (struct virtio_device*,int ) ;
 struct vring* virtqueue_get_vring (int ) ;

__attribute__((used)) static void mlxbf_tmfifo_console_output_one(struct mlxbf_tmfifo_vdev *cons,
         struct mlxbf_tmfifo_vring *vring,
         struct vring_desc *desc)
{
 const struct vring *vr = virtqueue_get_vring(vring->vq);
 struct virtio_device *vdev = &cons->vdev;
 u32 len, idx, seg;
 void *addr;

 while (desc) {
  addr = phys_to_virt(virtio64_to_cpu(vdev, desc->addr));
  len = virtio32_to_cpu(vdev, desc->len);

  seg = CIRC_SPACE_TO_END(cons->tx_buf.head, cons->tx_buf.tail,
     MLXBF_TMFIFO_CON_TX_BUF_SIZE);
  if (len <= seg) {
   memcpy(cons->tx_buf.buf + cons->tx_buf.head, addr, len);
  } else {
   memcpy(cons->tx_buf.buf + cons->tx_buf.head, addr, seg);
   addr += seg;
   memcpy(cons->tx_buf.buf, addr, len - seg);
  }
  cons->tx_buf.head = (cons->tx_buf.head + len) %
   MLXBF_TMFIFO_CON_TX_BUF_SIZE;

  if (!(virtio16_to_cpu(vdev, desc->flags) & VRING_DESC_F_NEXT))
   break;
  idx = virtio16_to_cpu(vdev, desc->next);
  desc = &vr->desc[idx];
 }
}
