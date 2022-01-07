
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nidio96_private {int mite_channel_lock; TYPE_1__* di_mite_chan; int di_mite_ring; int mite; } ;
struct comedi_device {scalar_t__ mmio; int class_dev; struct nidio96_private* private; } ;
struct TYPE_3__ {int channel; int dir; } ;


 int BUG_ON (TYPE_1__*) ;
 int COMEDI_INPUT ;
 scalar_t__ DMA_LINE_CONTROL_GROUP1 ;
 int EBUSY ;
 int dev_err (int ,char*) ;
 TYPE_1__* mite_request_channel_in_range (int ,int ,int,int) ;
 int primary_DMAChannel_bits (int ) ;
 int secondary_DMAChannel_bits (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int ni_pcidio_request_di_mite_channel(struct comedi_device *dev)
{
 struct nidio96_private *devpriv = dev->private;
 unsigned long flags;

 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 BUG_ON(devpriv->di_mite_chan);
 devpriv->di_mite_chan =
     mite_request_channel_in_range(devpriv->mite,
       devpriv->di_mite_ring, 1, 2);
 if (!devpriv->di_mite_chan) {
  spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
  dev_err(dev->class_dev, "failed to reserve mite dma channel\n");
  return -EBUSY;
 }
 devpriv->di_mite_chan->dir = COMEDI_INPUT;
 writeb(primary_DMAChannel_bits(devpriv->di_mite_chan->channel) |
        secondary_DMAChannel_bits(devpriv->di_mite_chan->channel),
        dev->mmio + DMA_LINE_CONTROL_GROUP1);
 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
 return 0;
}
