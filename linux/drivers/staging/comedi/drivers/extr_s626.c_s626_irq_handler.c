
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct comedi_device {int spinlock; scalar_t__ mmio; int attached; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;


 scalar_t__ S626_P_IER ;
 scalar_t__ S626_P_ISR ;
 int readl (scalar_t__) ;
 int s626_check_counter_interrupts (struct comedi_device*) ;
 int s626_check_dio_interrupts (struct comedi_device*) ;
 int s626_handle_eos_interrupt (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t s626_irq_handler(int irq, void *d)
{
 struct comedi_device *dev = d;
 unsigned long flags;
 u32 irqtype, irqstatus;

 if (!dev->attached)
  return IRQ_NONE;

 spin_lock_irqsave(&dev->spinlock, flags);


 irqstatus = readl(dev->mmio + S626_P_IER);


 irqtype = readl(dev->mmio + S626_P_ISR);


 writel(0, dev->mmio + S626_P_IER);


 writel(irqtype, dev->mmio + S626_P_ISR);

 switch (irqtype) {
 case 128:
  if (s626_handle_eos_interrupt(dev))
   irqstatus = 0;
  break;
 case 129:

  s626_check_dio_interrupts(dev);
  s626_check_counter_interrupts(dev);
  break;
 }


 writel(irqstatus, dev->mmio + S626_P_IER);

 spin_unlock_irqrestore(&dev->spinlock, flags);
 return IRQ_HANDLED;
}
