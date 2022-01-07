
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct tsi721_omsg_desc {void* next_hi; void* next_lo; scalar_t__ msg_info; void* type_id; } ;
struct tsi721_dma_sts {int dummy; } ;
struct tsi721_device {int flags; int* omsg_init; TYPE_2__* omsg_ring; TYPE_3__* pdev; scalar_t__ regs; TYPE_1__* msix; } ;
struct rio_mport {struct tsi721_device* priv; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int size; int sts_size; struct tsi721_omsg_desc** omq_base; scalar_t__* omq_phys; struct tsi721_omsg_desc* omd_base; scalar_t__ omd_phys; struct tsi721_omsg_desc* sts_base; scalar_t__ sts_phys; scalar_t__ wr_count; scalar_t__ tx_slot; int lock; scalar_t__ sts_rdptr; void* dev_id; } ;
struct TYPE_4__ {int vector; int irq_name; } ;


 int DTYPE5 ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int OMSG ;
 int RIO_MAX_MBOX ;
 int TSI721_DMAC_DSSZ_SIZE (int) ;
 int TSI721_MSG_BUFFER_SIZE ;
 scalar_t__ TSI721_OBDMAC_CTL (int) ;
 int TSI721_OBDMAC_CTL_INIT ;
 int TSI721_OBDMAC_CTL_RETRY_THR ;
 scalar_t__ TSI721_OBDMAC_DPTRH (int) ;
 scalar_t__ TSI721_OBDMAC_DPTRL (int) ;
 int TSI721_OBDMAC_DPTRL_MASK ;
 scalar_t__ TSI721_OBDMAC_DSBH (int) ;
 scalar_t__ TSI721_OBDMAC_DSBL (int) ;
 int TSI721_OBDMAC_DSBL_MASK ;
 scalar_t__ TSI721_OBDMAC_DSSZ (int) ;
 scalar_t__ TSI721_OBDMAC_DWRCNT (int) ;
 int TSI721_OBDMAC_INT_ALL ;
 int TSI721_OMSGD_MIN_RING_SIZE ;
 int TSI721_OMSGD_RING_SIZE ;
 int TSI721_USING_MSIX ;
 int TSI721_VECT_OMB0_DONE ;
 int TSI721_VECT_OMB0_INT ;
 void* cpu_to_le32 (int) ;
 void* dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 int dma_free_coherent (int *,int,struct tsi721_omsg_desc*,scalar_t__) ;
 int free_irq (int ,void*) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int is_power_of_2 (int) ;
 int mb () ;
 int mbox_sel ;
 int request_irq (int ,int ,int ,int ,void*) ;
 int roundup_pow_of_two (int) ;
 int spin_lock_init (int *) ;
 int tsi721_omsg_interrupt_enable (struct tsi721_device*,int,int ) ;
 int tsi721_omsg_msix ;
 int tsi_debug (int ,int *,char*,int) ;
 int udelay (int) ;

__attribute__((used)) static int tsi721_open_outb_mbox(struct rio_mport *mport, void *dev_id,
     int mbox, int entries)
{
 struct tsi721_device *priv = mport->priv;
 struct tsi721_omsg_desc *bd_ptr;
 int i, rc = 0;

 if ((entries < TSI721_OMSGD_MIN_RING_SIZE) ||
     (entries > (TSI721_OMSGD_RING_SIZE)) ||
     (!is_power_of_2(entries)) || mbox >= RIO_MAX_MBOX) {
  rc = -EINVAL;
  goto out;
 }

 if ((mbox_sel & (1 << mbox)) == 0) {
  rc = -ENODEV;
  goto out;
 }

 priv->omsg_ring[mbox].dev_id = dev_id;
 priv->omsg_ring[mbox].size = entries;
 priv->omsg_ring[mbox].sts_rdptr = 0;
 spin_lock_init(&priv->omsg_ring[mbox].lock);



 for (i = 0; i < entries; i++) {
  priv->omsg_ring[mbox].omq_base[i] =
   dma_alloc_coherent(
    &priv->pdev->dev, TSI721_MSG_BUFFER_SIZE,
    &priv->omsg_ring[mbox].omq_phys[i],
    GFP_KERNEL);
  if (priv->omsg_ring[mbox].omq_base[i] == ((void*)0)) {
   tsi_debug(OMSG, &priv->pdev->dev,
      "ENOMEM for OB_MSG_%d data buffer", mbox);
   rc = -ENOMEM;
   goto out_buf;
  }
 }


 priv->omsg_ring[mbox].omd_base = dma_alloc_coherent(
    &priv->pdev->dev,
    (entries + 1) * sizeof(struct tsi721_omsg_desc),
    &priv->omsg_ring[mbox].omd_phys, GFP_KERNEL);
 if (priv->omsg_ring[mbox].omd_base == ((void*)0)) {
  tsi_debug(OMSG, &priv->pdev->dev,
   "ENOMEM for OB_MSG_%d descriptor memory", mbox);
  rc = -ENOMEM;
  goto out_buf;
 }

 priv->omsg_ring[mbox].tx_slot = 0;


 priv->omsg_ring[mbox].sts_size = roundup_pow_of_two(entries + 1);
 priv->omsg_ring[mbox].sts_base = dma_alloc_coherent(&priv->pdev->dev,
           priv->omsg_ring[mbox].sts_size * sizeof(struct tsi721_dma_sts),
           &priv->omsg_ring[mbox].sts_phys,
           GFP_KERNEL);
 if (priv->omsg_ring[mbox].sts_base == ((void*)0)) {
  tsi_debug(OMSG, &priv->pdev->dev,
   "ENOMEM for OB_MSG_%d status FIFO", mbox);
  rc = -ENOMEM;
  goto out_desc;
 }






 iowrite32(((u64)priv->omsg_ring[mbox].omd_phys >> 32),
   priv->regs + TSI721_OBDMAC_DPTRH(mbox));
 iowrite32(((u64)priv->omsg_ring[mbox].omd_phys &
     TSI721_OBDMAC_DPTRL_MASK),
   priv->regs + TSI721_OBDMAC_DPTRL(mbox));


 iowrite32(((u64)priv->omsg_ring[mbox].sts_phys >> 32),
   priv->regs + TSI721_OBDMAC_DSBH(mbox));
 iowrite32(((u64)priv->omsg_ring[mbox].sts_phys &
     TSI721_OBDMAC_DSBL_MASK),
   priv->regs + TSI721_OBDMAC_DSBL(mbox));
 iowrite32(TSI721_DMAC_DSSZ_SIZE(priv->omsg_ring[mbox].sts_size),
  priv->regs + (u32)TSI721_OBDMAC_DSSZ(mbox));
 tsi721_omsg_interrupt_enable(priv, mbox, TSI721_OBDMAC_INT_ALL);


 bd_ptr = priv->omsg_ring[mbox].omd_base;
 bd_ptr[entries].type_id = cpu_to_le32(DTYPE5 << 29);
 bd_ptr[entries].msg_info = 0;
 bd_ptr[entries].next_lo =
  cpu_to_le32((u64)priv->omsg_ring[mbox].omd_phys &
  TSI721_OBDMAC_DPTRL_MASK);
 bd_ptr[entries].next_hi =
  cpu_to_le32((u64)priv->omsg_ring[mbox].omd_phys >> 32);
 priv->omsg_ring[mbox].wr_count = 0;
 mb();


 iowrite32(TSI721_OBDMAC_CTL_RETRY_THR | TSI721_OBDMAC_CTL_INIT,
    priv->regs + TSI721_OBDMAC_CTL(mbox));
 ioread32(priv->regs + TSI721_OBDMAC_DWRCNT(mbox));
 udelay(10);

 priv->omsg_init[mbox] = 1;

 return 0;
out_desc:
 dma_free_coherent(&priv->pdev->dev,
  (entries + 1) * sizeof(struct tsi721_omsg_desc),
  priv->omsg_ring[mbox].omd_base,
  priv->omsg_ring[mbox].omd_phys);

 priv->omsg_ring[mbox].omd_base = ((void*)0);

out_buf:
 for (i = 0; i < priv->omsg_ring[mbox].size; i++) {
  if (priv->omsg_ring[mbox].omq_base[i]) {
   dma_free_coherent(&priv->pdev->dev,
    TSI721_MSG_BUFFER_SIZE,
    priv->omsg_ring[mbox].omq_base[i],
    priv->omsg_ring[mbox].omq_phys[i]);

   priv->omsg_ring[mbox].omq_base[i] = ((void*)0);
  }
 }

out:
 return rc;
}
