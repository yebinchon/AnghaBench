
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nidio96_private {int mite_channel_lock; scalar_t__ di_mite_chan; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int spinlock; scalar_t__ mmio; int class_dev; int attached; struct comedi_subdevice* read_subdev; struct nidio96_private* private; } ;
struct comedi_async {int events; } ;
typedef int irqreturn_t ;


 int CLEAR_EXPIRED ;
 int CLEAR_PRIMARY_TC ;
 int CLEAR_SECONDARY_TC ;
 int CLEAR_WAITED ;
 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 int COUNT_EXPIRED ;
 int DATA_LEFT ;
 scalar_t__ GROUP_1_FIFO ;
 scalar_t__ GROUP_1_FIRST_CLEAR ;
 scalar_t__ GROUP_1_FLAGS ;
 scalar_t__ GROUP_1_SECOND_CLEAR ;
 scalar_t__ INTERRUPT_AND_WINDOW_STATUS ;
 int INT_EN ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ MASTER_DMA_AND_INTERRUPT_CONTROL ;
 scalar_t__ OP_MODE ;
 int PRIMARY_TC ;
 int SECONDARY_TC ;
 int TRANSFER_READY ;
 int WAITED ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned int*,int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int dev_dbg (int ,char*) ;
 int mite_ack_linkc (scalar_t__,struct comedi_subdevice*,int) ;
 int readb (scalar_t__) ;
 unsigned int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tag ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t nidio_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct nidio96_private *devpriv = dev->private;
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_async *async = s->async;
 unsigned int auxdata;
 int flags;
 int status;
 int work = 0;


 if (!dev->attached) {

  return IRQ_NONE;
 }


 spin_lock(&dev->spinlock);

 status = readb(dev->mmio + INTERRUPT_AND_WINDOW_STATUS);
 flags = readb(dev->mmio + GROUP_1_FLAGS);

 spin_lock(&devpriv->mite_channel_lock);
 if (devpriv->di_mite_chan) {
  mite_ack_linkc(devpriv->di_mite_chan, s, 0);

 }
 spin_unlock(&devpriv->mite_channel_lock);

 while (status & DATA_LEFT) {
  work++;
  if (work > 20) {
   dev_dbg(dev->class_dev, "too much work in interrupt\n");
   writeb(0x00,
          dev->mmio + MASTER_DMA_AND_INTERRUPT_CONTROL);
   break;
  }

  flags &= INT_EN;

  if (flags & TRANSFER_READY) {
   while (flags & TRANSFER_READY) {
    work++;
    if (work > 100) {
     dev_dbg(dev->class_dev,
      "too much work in interrupt\n");
     writeb(0x00, dev->mmio +
            MASTER_DMA_AND_INTERRUPT_CONTROL
           );
     goto out;
    }
    auxdata = readl(dev->mmio + GROUP_1_FIFO);
    comedi_buf_write_samples(s, &auxdata, 1);
    flags = readb(dev->mmio + GROUP_1_FLAGS);
   }
  }

  if (flags & COUNT_EXPIRED) {
   writeb(CLEAR_EXPIRED, dev->mmio + GROUP_1_SECOND_CLEAR);
   async->events |= COMEDI_CB_EOA;

   writeb(0x00, dev->mmio + OP_MODE);
   break;
  } else if (flags & WAITED) {
   writeb(CLEAR_WAITED, dev->mmio + GROUP_1_FIRST_CLEAR);
   async->events |= COMEDI_CB_ERROR;
   break;
  } else if (flags & PRIMARY_TC) {
   writeb(CLEAR_PRIMARY_TC,
          dev->mmio + GROUP_1_FIRST_CLEAR);
   async->events |= COMEDI_CB_EOA;
  } else if (flags & SECONDARY_TC) {
   writeb(CLEAR_SECONDARY_TC,
          dev->mmio + GROUP_1_FIRST_CLEAR);
   async->events |= COMEDI_CB_EOA;
  }

  flags = readb(dev->mmio + GROUP_1_FLAGS);
  status = readb(dev->mmio + INTERRUPT_AND_WINDOW_STATUS);
 }

out:
 comedi_handle_events(dev, s);





 spin_unlock(&dev->spinlock);
 return IRQ_HANDLED;
}
