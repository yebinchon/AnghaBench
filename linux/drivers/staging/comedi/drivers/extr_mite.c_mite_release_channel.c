
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_channel {int * ring; int channel; struct mite* mite; } ;
struct mite {int lock; scalar_t__ mmio; } ;


 int CHCR_CLR_CONT_RB_IE ;
 int CHCR_CLR_DMA_IE ;
 int CHCR_CLR_DONE_IE ;
 int CHCR_CLR_DRDY_IE ;
 int CHCR_CLR_LC_IE ;
 int CHCR_CLR_LINKP_IE ;
 int CHCR_CLR_MRDY_IE ;
 int CHCR_CLR_SAR_IE ;
 scalar_t__ MITE_CHCR (int ) ;
 int mite_dma_disarm (struct mite_channel*) ;
 int mite_dma_reset (struct mite_channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

void mite_release_channel(struct mite_channel *mite_chan)
{
 struct mite *mite = mite_chan->mite;
 unsigned long flags;


 spin_lock_irqsave(&mite->lock, flags);
 if (mite_chan->ring) {
  mite_dma_disarm(mite_chan);
  mite_dma_reset(mite_chan);




  writel(CHCR_CLR_DMA_IE | CHCR_CLR_LINKP_IE |
         CHCR_CLR_SAR_IE | CHCR_CLR_DONE_IE |
         CHCR_CLR_MRDY_IE | CHCR_CLR_DRDY_IE |
         CHCR_CLR_LC_IE | CHCR_CLR_CONT_RB_IE,
         mite->mmio + MITE_CHCR(mite_chan->channel));
  mite_chan->ring = ((void*)0);
 }
 spin_unlock_irqrestore(&mite->lock, flags);
}
