
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mite_channel {scalar_t__ dir; int channel; TYPE_1__* ring; struct mite* mite; } ;
struct mite {scalar_t__ mmio; } ;
struct TYPE_2__ {unsigned int dma_addr; } ;


 unsigned int CHCR_BURSTEN ;
 unsigned int CHCR_BYTE_SWAP_DEVICE ;
 unsigned int CHCR_BYTE_SWAP_MEMORY ;
 unsigned int CHCR_DEV_TO_MEM ;
 unsigned int CHCR_LINKSHORT ;
 unsigned int CHCR_SET_DMA_IE ;
 unsigned int CHCR_SET_DONE_IE ;
 unsigned int CHCR_SET_LC_IE ;
 scalar_t__ COMEDI_INPUT ;
 unsigned int CR_AMDEVICE ;
 unsigned int CR_ASEQUP ;
 unsigned int CR_PORTIO ;
 unsigned int CR_PSIZE16 ;
 unsigned int CR_PSIZE32 ;
 unsigned int CR_PSIZE8 ;
 scalar_t__ MITE_CHCR (int ) ;
 scalar_t__ MITE_DAR (int ) ;
 scalar_t__ MITE_DCR (int ) ;
 scalar_t__ MITE_LKAR (int ) ;
 scalar_t__ MITE_LKCR (int ) ;
 scalar_t__ MITE_MCR (int ) ;
 int mite_dma_reset (struct mite_channel*) ;
 unsigned int mite_drq_reqs (int ) ;
 unsigned int mite_retry_limit (int) ;
 int pr_warn (char*) ;
 int writel (unsigned int,scalar_t__) ;

void mite_prep_dma(struct mite_channel *mite_chan,
     unsigned int num_device_bits, unsigned int num_memory_bits)
{
 struct mite *mite = mite_chan->mite;
 unsigned int chcr, mcr, dcr, lkcr;

 mite_dma_reset(mite_chan);


 chcr = CHCR_SET_DMA_IE | CHCR_LINKSHORT | CHCR_SET_DONE_IE |
     CHCR_BURSTEN;
 chcr |= CHCR_SET_LC_IE;
 if (num_memory_bits == 32 && num_device_bits == 16) {







  chcr |= CHCR_BYTE_SWAP_DEVICE | CHCR_BYTE_SWAP_MEMORY;
 }
 if (mite_chan->dir == COMEDI_INPUT)
  chcr |= CHCR_DEV_TO_MEM;

 writel(chcr, mite->mmio + MITE_CHCR(mite_chan->channel));


 mcr = mite_retry_limit(64) | CR_ASEQUP;
 switch (num_memory_bits) {
 case 8:
  mcr |= CR_PSIZE8;
  break;
 case 16:
  mcr |= CR_PSIZE16;
  break;
 case 32:
  mcr |= CR_PSIZE32;
  break;
 default:
  pr_warn("bug! invalid mem bit width for dma transfer\n");
  break;
 }
 writel(mcr, mite->mmio + MITE_MCR(mite_chan->channel));


 dcr = mite_retry_limit(64) | CR_ASEQUP;
 dcr |= CR_PORTIO | CR_AMDEVICE | mite_drq_reqs(mite_chan->channel);
 switch (num_device_bits) {
 case 8:
  dcr |= CR_PSIZE8;
  break;
 case 16:
  dcr |= CR_PSIZE16;
  break;
 case 32:
  dcr |= CR_PSIZE32;
  break;
 default:
  pr_warn("bug! invalid dev bit width for dma transfer\n");
  break;
 }
 writel(dcr, mite->mmio + MITE_DCR(mite_chan->channel));


 writel(0, mite->mmio + MITE_DAR(mite_chan->channel));


 lkcr = mite_retry_limit(64) | CR_ASEQUP | CR_PSIZE32;
 writel(lkcr, mite->mmio + MITE_LKCR(mite_chan->channel));


 writel(mite_chan->ring->dma_addr,
        mite->mmio + MITE_LKAR(mite_chan->channel));
}
