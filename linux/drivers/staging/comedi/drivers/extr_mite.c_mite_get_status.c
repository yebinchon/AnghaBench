
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_channel {int done; int channel; struct mite* mite; } ;
struct mite {int lock; scalar_t__ mmio; } ;


 int CHOR_CLRDONE ;
 unsigned int CHSR_DONE ;
 scalar_t__ MITE_CHOR (int ) ;
 scalar_t__ MITE_CHSR (int ) ;
 unsigned int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static unsigned int mite_get_status(struct mite_channel *mite_chan)
{
 struct mite *mite = mite_chan->mite;
 unsigned int status;
 unsigned long flags;

 spin_lock_irqsave(&mite->lock, flags);
 status = readl(mite->mmio + MITE_CHSR(mite_chan->channel));
 if (status & CHSR_DONE) {
  mite_chan->done = 1;
  writel(CHOR_CLRDONE,
         mite->mmio + MITE_CHOR(mite_chan->channel));
 }
 spin_unlock_irqrestore(&mite->lock, flags);
 return status;
}
