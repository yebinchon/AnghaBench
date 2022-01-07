
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int spinlock; scalar_t__ iobase; } ;


 scalar_t__ APCI1500_Z8536_CTRL_REG ;
 int outb (unsigned int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void z8536_write(struct comedi_device *dev,
   unsigned int val, unsigned int reg)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->spinlock, flags);
 outb(reg, dev->iobase + APCI1500_Z8536_CTRL_REG);
 outb(val, dev->iobase + APCI1500_Z8536_CTRL_REG);
 spin_unlock_irqrestore(&dev->spinlock, flags);
}
