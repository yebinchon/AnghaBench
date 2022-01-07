
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int mite_channel_lock; struct mite_channel* ao_mite_chan; int ao_mite_ring; int mite; } ;
struct mite_channel {int channel; int dir; } ;
struct comedi_device {int class_dev; struct ni_private* private; } ;


 int COMEDI_OUTPUT ;
 int EBUSY ;
 int NI_E_DMA_AI_AO_SEL_REG ;
 int NI_E_DMA_AO_SEL (unsigned int) ;
 int NI_E_DMA_AO_SEL_MASK ;
 unsigned int NI_STC_DMA_CHAN_SEL (int ) ;
 int dev_err (int ,char*) ;
 struct mite_channel* mite_request_channel (int ,int ) ;
 int ni_set_bitfield (struct comedi_device*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ni_request_ao_mite_channel(struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;
 struct mite_channel *mite_chan;
 unsigned long flags;
 unsigned int bits;

 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 mite_chan = mite_request_channel(devpriv->mite, devpriv->ao_mite_ring);
 if (!mite_chan) {
  spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
  dev_err(dev->class_dev,
   "failed to reserve mite dma channel for analog output\n");
  return -EBUSY;
 }
 mite_chan->dir = COMEDI_OUTPUT;
 devpriv->ao_mite_chan = mite_chan;

 bits = NI_STC_DMA_CHAN_SEL(mite_chan->channel);
 ni_set_bitfield(dev, NI_E_DMA_AI_AO_SEL_REG,
   NI_E_DMA_AO_SEL_MASK, NI_E_DMA_AO_SEL(bits));

 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
 return 0;
}
