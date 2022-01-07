
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_2__ {void* buf; int tail; int head; } ;
struct mlxbf_tmfifo_vdev {TYPE_1__ tx_buf; } ;
struct mlxbf_tmfifo_msg_hdr {size_t type; int len; } ;
struct mlxbf_tmfifo {int spin_lock; scalar_t__ tx_base; struct mlxbf_tmfifo_vdev** vdev; } ;
typedef int hdr ;


 int CIRC_CNT (int ,int,int) ;
 int CIRC_CNT_TO_END (int ,int,int) ;
 int MLXBF_TMFIFO_CON_TX_BUF_SIZE ;
 int MLXBF_TMFIFO_DATA_MIN_WORDS ;
 scalar_t__ MLXBF_TMFIFO_TX_DATA ;
 size_t VIRTIO_ID_CONSOLE ;
 int htons (int) ;
 int memcpy (int *,void*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static void mlxbf_tmfifo_console_tx(struct mlxbf_tmfifo *fifo, int avail)
{
 struct mlxbf_tmfifo_msg_hdr hdr;
 struct mlxbf_tmfifo_vdev *cons;
 unsigned long flags;
 int size, seg;
 void *addr;
 u64 data;


 if (avail < MLXBF_TMFIFO_DATA_MIN_WORDS)
  return;

 cons = fifo->vdev[VIRTIO_ID_CONSOLE];
 if (!cons || !cons->tx_buf.buf)
  return;


 size = CIRC_CNT(cons->tx_buf.head, cons->tx_buf.tail,
   MLXBF_TMFIFO_CON_TX_BUF_SIZE);
 if (size == 0)
  return;


 if (size + sizeof(hdr) > avail * sizeof(u64))
  size = avail * sizeof(u64) - sizeof(hdr);


 hdr.type = VIRTIO_ID_CONSOLE;
 hdr.len = htons(size);
 writeq(*(u64 *)&hdr, fifo->tx_base + MLXBF_TMFIFO_TX_DATA);


 spin_lock_irqsave(&fifo->spin_lock, flags);

 while (size > 0) {
  addr = cons->tx_buf.buf + cons->tx_buf.tail;

  seg = CIRC_CNT_TO_END(cons->tx_buf.head, cons->tx_buf.tail,
          MLXBF_TMFIFO_CON_TX_BUF_SIZE);
  if (seg >= sizeof(u64)) {
   memcpy(&data, addr, sizeof(u64));
  } else {
   memcpy(&data, addr, seg);
   memcpy((u8 *)&data + seg, cons->tx_buf.buf,
          sizeof(u64) - seg);
  }
  writeq(data, fifo->tx_base + MLXBF_TMFIFO_TX_DATA);

  if (size >= sizeof(u64)) {
   cons->tx_buf.tail = (cons->tx_buf.tail + sizeof(u64)) %
    MLXBF_TMFIFO_CON_TX_BUF_SIZE;
   size -= sizeof(u64);
  } else {
   cons->tx_buf.tail = (cons->tx_buf.tail + size) %
    MLXBF_TMFIFO_CON_TX_BUF_SIZE;
   size = 0;
  }
 }

 spin_unlock_irqrestore(&fifo->spin_lock, flags);
}
