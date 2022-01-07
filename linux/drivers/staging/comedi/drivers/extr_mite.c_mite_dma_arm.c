
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_channel {int channel; scalar_t__ done; struct mite* mite; } ;
struct mite {int lock; scalar_t__ mmio; } ;


 int CHOR_START ;
 scalar_t__ MITE_CHOR (int ) ;
 int smp_mb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

void mite_dma_arm(struct mite_channel *mite_chan)
{
 struct mite *mite = mite_chan->mite;
 unsigned long flags;





 smp_mb();
 spin_lock_irqsave(&mite->lock, flags);
 mite_chan->done = 0;

 writel(CHOR_START, mite->mmio + MITE_CHOR(mite_chan->channel));
 spin_unlock_irqrestore(&mite->lock, flags);
}
