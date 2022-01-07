
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nidio96_private {int mite_channel_lock; scalar_t__ di_mite_chan; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int spinlock; struct nidio96_private* private; } ;


 int comedi_buf_n_bytes_ready (struct comedi_subdevice*) ;
 int mite_sync_dma (scalar_t__,struct comedi_subdevice*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ni_pcidio_poll(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct nidio96_private *devpriv = dev->private;
 unsigned long irq_flags;
 int count;

 spin_lock_irqsave(&dev->spinlock, irq_flags);
 spin_lock(&devpriv->mite_channel_lock);
 if (devpriv->di_mite_chan)
  mite_sync_dma(devpriv->di_mite_chan, s);
 spin_unlock(&devpriv->mite_channel_lock);
 count = comedi_buf_n_bytes_ready(s);
 spin_unlock_irqrestore(&dev->spinlock, irq_flags);
 return count;
}
