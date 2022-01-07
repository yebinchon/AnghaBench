
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct tsi721_imsg_desc {int msg_info; int bufptr_lo; int bufptr_hi; } ;
struct tsi721_device {scalar_t__ regs; TYPE_1__* imsg_ring; int * imsg_init; } ;
struct rio_mport {struct tsi721_device* priv; } ;
struct TYPE_2__ {size_t desc_rdptr; size_t rx_slot; size_t size; int* imfq_base; size_t fq_wrptr; int ** imq_base; scalar_t__ buf_phys; void* buf_base; struct tsi721_imsg_desc* imd_base; } ;


 int RIO_MAX_MSG_SIZE ;
 scalar_t__ TSI721_IBDMAC_DQRP (int) ;
 scalar_t__ TSI721_IBDMAC_FQWP (int) ;
 int TSI721_IMD_BCOUNT ;
 int TSI721_IMD_HO ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (int) ;
 int iowrite32 (size_t,scalar_t__) ;
 int le32_to_cpu (int ) ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static void *tsi721_get_inb_message(struct rio_mport *mport, int mbox)
{
 struct tsi721_device *priv = mport->priv;
 struct tsi721_imsg_desc *desc;
 u32 rx_slot;
 void *rx_virt = ((void*)0);
 u64 rx_phys;
 void *buf = ((void*)0);
 u64 *free_ptr;
 int ch = mbox + 4;
 int msg_size;

 if (!priv->imsg_init[mbox])
  return ((void*)0);

 desc = priv->imsg_ring[mbox].imd_base;
 desc += priv->imsg_ring[mbox].desc_rdptr;

 if (!(le32_to_cpu(desc->msg_info) & TSI721_IMD_HO))
  goto out;

 rx_slot = priv->imsg_ring[mbox].rx_slot;
 while (priv->imsg_ring[mbox].imq_base[rx_slot] == ((void*)0)) {
  if (++rx_slot == priv->imsg_ring[mbox].size)
   rx_slot = 0;
 }

 rx_phys = ((u64)le32_to_cpu(desc->bufptr_hi) << 32) |
   le32_to_cpu(desc->bufptr_lo);

 rx_virt = priv->imsg_ring[mbox].buf_base +
    (rx_phys - (u64)priv->imsg_ring[mbox].buf_phys);

 buf = priv->imsg_ring[mbox].imq_base[rx_slot];
 msg_size = le32_to_cpu(desc->msg_info) & TSI721_IMD_BCOUNT;
 if (msg_size == 0)
  msg_size = RIO_MAX_MSG_SIZE;

 memcpy(buf, rx_virt, msg_size);
 priv->imsg_ring[mbox].imq_base[rx_slot] = ((void*)0);

 desc->msg_info &= cpu_to_le32(~TSI721_IMD_HO);
 if (++priv->imsg_ring[mbox].desc_rdptr == priv->imsg_ring[mbox].size)
  priv->imsg_ring[mbox].desc_rdptr = 0;

 iowrite32(priv->imsg_ring[mbox].desc_rdptr,
  priv->regs + TSI721_IBDMAC_DQRP(ch));


 free_ptr = priv->imsg_ring[mbox].imfq_base;
 free_ptr[priv->imsg_ring[mbox].fq_wrptr] = cpu_to_le64(rx_phys);

 if (++priv->imsg_ring[mbox].fq_wrptr == priv->imsg_ring[mbox].size)
  priv->imsg_ring[mbox].fq_wrptr = 0;

 iowrite32(priv->imsg_ring[mbox].fq_wrptr,
  priv->regs + TSI721_IBDMAC_FQWP(ch));
out:
 return buf;
}
