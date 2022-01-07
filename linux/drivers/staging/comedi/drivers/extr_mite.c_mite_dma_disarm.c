
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mite_channel {int channel; struct mite* mite; } ;
struct mite {scalar_t__ mmio; } ;


 int CHOR_ABORT ;
 scalar_t__ MITE_CHOR (int ) ;
 int writel (int ,scalar_t__) ;

void mite_dma_disarm(struct mite_channel *mite_chan)
{
 struct mite *mite = mite_chan->mite;


 writel(CHOR_ABORT, mite->mmio + MITE_CHOR(mite_chan->channel));
}
