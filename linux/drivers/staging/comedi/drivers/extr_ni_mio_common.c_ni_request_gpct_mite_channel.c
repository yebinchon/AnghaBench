
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_private {int mite_channel_lock; int * gpct_mite_ring; int mite; TYPE_1__* counter_dev; } ;
struct ni_gpct {int dummy; } ;
struct mite_channel {int dir; int channel; } ;
struct comedi_device {int class_dev; struct ni_private* private; } ;
typedef enum comedi_io_direction { ____Placeholder_comedi_io_direction } comedi_io_direction ;
struct TYPE_2__ {struct ni_gpct* counters; } ;


 int EBUSY ;
 int NI_E_DMA_G0_G1_SEL (unsigned int,unsigned int) ;
 int NI_E_DMA_G0_G1_SEL_MASK (unsigned int) ;
 int NI_E_DMA_G0_G1_SEL_REG ;
 unsigned int NI_STC_DMA_CHAN_SEL (int ) ;
 int dev_err (int ,char*) ;
 struct mite_channel* mite_request_channel (int ,int ) ;
 int ni_set_bitfield (struct comedi_device*,int ,int ,int ) ;
 int ni_tio_set_mite_channel (struct ni_gpct*,struct mite_channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ni_request_gpct_mite_channel(struct comedi_device *dev,
     unsigned int gpct_index,
     enum comedi_io_direction direction)
{
 struct ni_private *devpriv = dev->private;
 struct ni_gpct *counter = &devpriv->counter_dev->counters[gpct_index];
 struct mite_channel *mite_chan;
 unsigned long flags;
 unsigned int bits;

 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 mite_chan = mite_request_channel(devpriv->mite,
      devpriv->gpct_mite_ring[gpct_index]);
 if (!mite_chan) {
  spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
  dev_err(dev->class_dev,
   "failed to reserve mite dma channel for counter\n");
  return -EBUSY;
 }
 mite_chan->dir = direction;
 ni_tio_set_mite_channel(counter, mite_chan);

 bits = NI_STC_DMA_CHAN_SEL(mite_chan->channel);
 ni_set_bitfield(dev, NI_E_DMA_G0_G1_SEL_REG,
   NI_E_DMA_G0_G1_SEL_MASK(gpct_index),
   NI_E_DMA_G0_G1_SEL(gpct_index, bits));

 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
 return 0;
}
