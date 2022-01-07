
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nidio96_private {int mite_channel_lock; scalar_t__ di_mite_chan; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct nidio96_private* private; } ;
struct TYPE_2__ {int prealloc_bufsz; } ;


 int EIO ;
 int comedi_buf_write_alloc (struct comedi_subdevice*,int ) ;
 int mite_dma_arm (scalar_t__) ;
 int mite_prep_dma (scalar_t__,int,int) ;
 int ni_pcidio_request_di_mite_channel (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int setup_mite_dma(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct nidio96_private *devpriv = dev->private;
 int retval;
 unsigned long flags;

 retval = ni_pcidio_request_di_mite_channel(dev);
 if (retval)
  return retval;


 comedi_buf_write_alloc(s, s->async->prealloc_bufsz);

 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 if (devpriv->di_mite_chan) {
  mite_prep_dma(devpriv->di_mite_chan, 32, 32);
  mite_dma_arm(devpriv->di_mite_chan);
 } else {
  retval = -EIO;
 }
 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);

 return retval;
}
