
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int mite_channel_lock; scalar_t__ ai_mite_chan; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; struct ni_private* private; } ;


 int mite_sync_dma (scalar_t__,struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ni_sync_ai_dma(struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;
 struct comedi_subdevice *s = dev->read_subdev;
 unsigned long flags;

 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 if (devpriv->ai_mite_chan)
  mite_sync_dma(devpriv->ai_mite_chan, s);
 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
}
