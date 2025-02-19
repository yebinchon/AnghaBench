
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct tsi721_omsg_desc {int dummy; } ;
struct rio_mport {TYPE_1__* outb_msg; } ;
struct tsi721_device {int flags; TYPE_3__* omsg_ring; scalar_t__ regs; TYPE_2__* pdev; struct rio_mport mport; } ;
struct TYPE_6__ {int sts_rdptr; int sts_size; int size; int tx_slot; int wr_count; int lock; void* dev_id; scalar_t__ omd_phys; scalar_t__* sts_base; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int (* mcback ) (struct rio_mport*,void*,int,int) ;} ;


 int OMSG ;
 scalar_t__ TSI721_DEV_CHAN_INTE ;
 int TSI721_INT_OMSG_CHAN (int) ;
 scalar_t__ TSI721_OBDMAC_CTL (int) ;
 int TSI721_OBDMAC_CTL_INIT ;
 int TSI721_OBDMAC_CTL_RETRY_THR ;
 scalar_t__ TSI721_OBDMAC_DRDCNT (int) ;
 scalar_t__ TSI721_OBDMAC_DSRP (int) ;
 scalar_t__ TSI721_OBDMAC_INT (int) ;
 int TSI721_OBDMAC_INT_DONE ;
 int TSI721_OBDMAC_INT_ERROR ;
 int TSI721_OBDMAC_INT_IOF_DONE ;
 int TSI721_OBDMAC_INT_ST_FULL ;
 scalar_t__ TSI721_OBDMAC_STS (int) ;
 int TSI721_USING_MSIX ;
 int WARN_ON (int) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 scalar_t__ le64_to_cpu (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct rio_mport*,void*,int,int) ;
 int tsi_debug (int ,int *,char*,int,...) ;
 int tsi_info (int *,char*,int) ;

__attribute__((used)) static void tsi721_omsg_handler(struct tsi721_device *priv, int ch)
{
 u32 omsg_int;
 struct rio_mport *mport = &priv->mport;
 void *dev_id = ((void*)0);
 u32 tx_slot = 0xffffffff;
 int do_callback = 0;

 spin_lock(&priv->omsg_ring[ch].lock);

 omsg_int = ioread32(priv->regs + TSI721_OBDMAC_INT(ch));

 if (omsg_int & TSI721_OBDMAC_INT_ST_FULL)
  tsi_info(&priv->pdev->dev,
   "OB MBOX%d: Status FIFO is full", ch);

 if (omsg_int & (TSI721_OBDMAC_INT_DONE | TSI721_OBDMAC_INT_IOF_DONE)) {
  u32 srd_ptr;
  u64 *sts_ptr, last_ptr = 0, prev_ptr = 0;
  int i, j;






  srd_ptr = priv->omsg_ring[ch].sts_rdptr;
  sts_ptr = priv->omsg_ring[ch].sts_base;
  j = srd_ptr * 8;
  while (sts_ptr[j]) {
   for (i = 0; i < 8 && sts_ptr[j]; i++, j++) {
    prev_ptr = last_ptr;
    last_ptr = le64_to_cpu(sts_ptr[j]);
    sts_ptr[j] = 0;
   }

   ++srd_ptr;
   srd_ptr %= priv->omsg_ring[ch].sts_size;
   j = srd_ptr * 8;
  }

  if (last_ptr == 0)
   goto no_sts_update;

  priv->omsg_ring[ch].sts_rdptr = srd_ptr;
  iowrite32(srd_ptr, priv->regs + TSI721_OBDMAC_DSRP(ch));

  if (!mport->outb_msg[ch].mcback)
   goto no_sts_update;



  tx_slot = (last_ptr - (u64)priv->omsg_ring[ch].omd_phys)/
      sizeof(struct tsi721_omsg_desc);






  if (tx_slot == priv->omsg_ring[ch].size) {
   if (prev_ptr)
    tx_slot = (prev_ptr -
     (u64)priv->omsg_ring[ch].omd_phys)/
      sizeof(struct tsi721_omsg_desc);
   else
    goto no_sts_update;
  }

  if (tx_slot >= priv->omsg_ring[ch].size)
   tsi_debug(OMSG, &priv->pdev->dev,
      "OB_MSG tx_slot=%x > size=%x",
      tx_slot, priv->omsg_ring[ch].size);
  WARN_ON(tx_slot >= priv->omsg_ring[ch].size);


  ++tx_slot;
  if (tx_slot == priv->omsg_ring[ch].size)
   tx_slot = 0;

  dev_id = priv->omsg_ring[ch].dev_id;
  do_callback = 1;
 }

no_sts_update:

 if (omsg_int & TSI721_OBDMAC_INT_ERROR) {





  tsi_debug(OMSG, &priv->pdev->dev, "OB MSG ABORT ch_stat=%x",
     ioread32(priv->regs + TSI721_OBDMAC_STS(ch)));

  iowrite32(TSI721_OBDMAC_INT_ERROR,
    priv->regs + TSI721_OBDMAC_INT(ch));
  iowrite32(TSI721_OBDMAC_CTL_RETRY_THR | TSI721_OBDMAC_CTL_INIT,
    priv->regs + TSI721_OBDMAC_CTL(ch));
  ioread32(priv->regs + TSI721_OBDMAC_CTL(ch));


  dev_id = priv->omsg_ring[ch].dev_id;
  tx_slot = priv->omsg_ring[ch].tx_slot;
  do_callback = 1;


  iowrite32(priv->omsg_ring[ch].tx_slot,
   priv->regs + TSI721_OBDMAC_DRDCNT(ch));
  ioread32(priv->regs + TSI721_OBDMAC_DRDCNT(ch));
  priv->omsg_ring[ch].wr_count = priv->omsg_ring[ch].tx_slot;
  priv->omsg_ring[ch].sts_rdptr = 0;
 }


 iowrite32(omsg_int, priv->regs + TSI721_OBDMAC_INT(ch));

 if (!(priv->flags & TSI721_USING_MSIX)) {
  u32 ch_inte;


  ch_inte = ioread32(priv->regs + TSI721_DEV_CHAN_INTE);
  ch_inte |= TSI721_INT_OMSG_CHAN(ch);
  iowrite32(ch_inte, priv->regs + TSI721_DEV_CHAN_INTE);
 }

 spin_unlock(&priv->omsg_ring[ch].lock);

 if (mport->outb_msg[ch].mcback && do_callback)
  mport->outb_msg[ch].mcback(mport, dev_id, ch, tx_slot);
}
