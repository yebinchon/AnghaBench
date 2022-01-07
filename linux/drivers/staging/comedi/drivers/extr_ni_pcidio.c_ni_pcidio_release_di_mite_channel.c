
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nidio96_private {int mite_channel_lock; int * di_mite_chan; } ;
struct comedi_device {scalar_t__ mmio; struct nidio96_private* private; } ;


 scalar_t__ DMA_LINE_CONTROL_GROUP1 ;
 int mite_release_channel (int *) ;
 int primary_DMAChannel_bits (int ) ;
 int secondary_DMAChannel_bits (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void ni_pcidio_release_di_mite_channel(struct comedi_device *dev)
{
 struct nidio96_private *devpriv = dev->private;
 unsigned long flags;

 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 if (devpriv->di_mite_chan) {
  mite_release_channel(devpriv->di_mite_chan);
  devpriv->di_mite_chan = ((void*)0);
  writeb(primary_DMAChannel_bits(0) |
         secondary_DMAChannel_bits(0),
         dev->mmio + DMA_LINE_CONTROL_GROUP1);
 }
 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
}
