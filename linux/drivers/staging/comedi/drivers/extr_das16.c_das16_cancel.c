
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das16_private_struct {int ctrl_reg; scalar_t__ can_burst; int timer; scalar_t__ timer_running; struct comedi_isadma* dma; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_isadma {int chan; } ;
struct comedi_device {int spinlock; scalar_t__ iobase; struct das16_private_struct* private; } ;


 scalar_t__ DAS1600_BURST_REG ;
 int DAS16_CTRL_DMAE ;
 int DAS16_CTRL_INTE ;
 int DAS16_CTRL_PACING_MASK ;
 scalar_t__ DAS16_CTRL_REG ;
 int comedi_isadma_disable (int ) ;
 int del_timer (int *) ;
 int outb (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int das16_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct das16_private_struct *devpriv = dev->private;
 struct comedi_isadma *dma = devpriv->dma;
 unsigned long flags;

 spin_lock_irqsave(&dev->spinlock, flags);


 devpriv->ctrl_reg &= ~(DAS16_CTRL_INTE | DAS16_CTRL_DMAE |
          DAS16_CTRL_PACING_MASK);
 outb(devpriv->ctrl_reg, dev->iobase + DAS16_CTRL_REG);

 comedi_isadma_disable(dma->chan);


 if (devpriv->timer_running) {
  devpriv->timer_running = 0;
  del_timer(&devpriv->timer);
 }

 if (devpriv->can_burst)
  outb(0, dev->iobase + DAS1600_BURST_REG);

 spin_unlock_irqrestore(&dev->spinlock, flags);

 return 0;
}
