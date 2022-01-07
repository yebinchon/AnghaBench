
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int mite_chan; } ;
struct ni_660x_private {int interrupt_lock; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct comedi_device {struct ni_660x_private* private; } ;


 int comedi_buf_read_n_available (struct comedi_subdevice*) ;
 int mite_sync_dma (int ,struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ni_660x_input_poll(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 struct ni_660x_private *devpriv = dev->private;
 struct ni_gpct *counter = s->private;
 unsigned long flags;


 spin_lock_irqsave(&devpriv->interrupt_lock, flags);
 mite_sync_dma(counter->mite_chan, s);
 spin_unlock_irqrestore(&devpriv->interrupt_lock, flags);
 return comedi_buf_read_n_available(s);
}
