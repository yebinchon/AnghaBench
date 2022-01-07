
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mite_channel {int channel; struct mite* mite; } ;
struct mite {scalar_t__ mmio; } ;
struct comedi_subdevice {TYPE_1__* async; TYPE_2__* device; } ;
struct TYPE_4__ {int class_dev; } ;
struct TYPE_3__ {int events; } ;


 int CHOR_CLRLC ;
 unsigned int CHSR_LINKC ;
 unsigned int CHSR_XFERR ;
 int COMEDI_CB_ERROR ;
 scalar_t__ MITE_CHOR (int ) ;
 int dev_err (int ,char*,unsigned int) ;
 unsigned int mite_get_status (struct mite_channel*) ;
 int mite_sync_dma (struct mite_channel*,struct comedi_subdevice*) ;
 int writel (int ,scalar_t__) ;

void mite_ack_linkc(struct mite_channel *mite_chan,
      struct comedi_subdevice *s,
      bool sync)
{
 struct mite *mite = mite_chan->mite;
 unsigned int status;

 status = mite_get_status(mite_chan);
 if (status & CHSR_LINKC) {
  writel(CHOR_CLRLC, mite->mmio + MITE_CHOR(mite_chan->channel));
  sync = 1;
 }
 if (sync)
  mite_sync_dma(mite_chan, s);

 if (status & CHSR_XFERR) {
  dev_err(s->device->class_dev,
   "mite: transfer error %08x\n", status);
  s->async->events |= COMEDI_CB_ERROR;
 }
}
