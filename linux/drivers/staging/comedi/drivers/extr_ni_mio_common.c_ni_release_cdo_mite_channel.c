
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int mite_channel_lock; int * cdo_mite_chan; } ;
struct comedi_device {struct ni_private* private; } ;


 int NI_M_CDIO_DMA_SEL_CDO_MASK ;
 int NI_M_CDIO_DMA_SEL_REG ;
 int mite_release_channel (int *) ;
 int ni_set_bitfield (struct comedi_device*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ni_release_cdo_mite_channel(struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;
 unsigned long flags;

 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 if (devpriv->cdo_mite_chan) {
  ni_set_bitfield(dev, NI_M_CDIO_DMA_SEL_REG,
    NI_M_CDIO_DMA_SEL_CDO_MASK, 0);
  mite_release_channel(devpriv->cdo_mite_chan);
  devpriv->cdo_mite_chan = ((void*)0);
 }
 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
}
