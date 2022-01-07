
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct tsi721_omsg_desc {void* type_id; void* bufptr_hi; void* bufptr_lo; void* msg_info; } ;
struct tsi721_device {TYPE_1__* omsg_ring; scalar_t__ regs; int * omsg_init; } ;
struct rio_mport {int sys_size; struct tsi721_device* priv; } ;
struct rio_dev {int destid; } ;
struct TYPE_2__ {size_t tx_slot; scalar_t__ size; int lock; int wr_count; scalar_t__* omq_phys; struct tsi721_omsg_desc* omd_base; int * omq_base; } ;


 int DTYPE4 ;
 int EINVAL ;
 size_t TSI721_MSG_MAX_SIZE ;
 scalar_t__ TSI721_OBDMAC_DWRCNT (int) ;
 int TSI721_OMD_IOF ;
 void* cpu_to_le32 (int) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int mb () ;
 int memcpy (int ,void*,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
tsi721_add_outb_message(struct rio_mport *mport, struct rio_dev *rdev, int mbox,
   void *buffer, size_t len)
{
 struct tsi721_device *priv = mport->priv;
 struct tsi721_omsg_desc *desc;
 u32 tx_slot;
 unsigned long flags;

 if (!priv->omsg_init[mbox] ||
     len > TSI721_MSG_MAX_SIZE || len < 8)
  return -EINVAL;

 spin_lock_irqsave(&priv->omsg_ring[mbox].lock, flags);

 tx_slot = priv->omsg_ring[mbox].tx_slot;


 memcpy(priv->omsg_ring[mbox].omq_base[tx_slot], buffer, len);

 if (len & 0x7)
  len += 8;


 desc = priv->omsg_ring[mbox].omd_base;
 desc[tx_slot].type_id = cpu_to_le32((DTYPE4 << 29) | rdev->destid);





 desc[tx_slot].msg_info =
  cpu_to_le32((mport->sys_size << 26) | (mbox << 22) |
       (0xe << 12) | (len & 0xff8));
 desc[tx_slot].bufptr_lo =
  cpu_to_le32((u64)priv->omsg_ring[mbox].omq_phys[tx_slot] &
       0xffffffff);
 desc[tx_slot].bufptr_hi =
  cpu_to_le32((u64)priv->omsg_ring[mbox].omq_phys[tx_slot] >> 32);

 priv->omsg_ring[mbox].wr_count++;


 if (++priv->omsg_ring[mbox].tx_slot == priv->omsg_ring[mbox].size) {
  priv->omsg_ring[mbox].tx_slot = 0;

  priv->omsg_ring[mbox].wr_count++;
 }

 mb();


 iowrite32(priv->omsg_ring[mbox].wr_count,
  priv->regs + TSI721_OBDMAC_DWRCNT(mbox));
 ioread32(priv->regs + TSI721_OBDMAC_DWRCNT(mbox));

 spin_unlock_irqrestore(&priv->omsg_ring[mbox].lock, flags);

 return 0;
}
