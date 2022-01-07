
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int spinlock; scalar_t__ iobase; int class_dev; int attached; } ;
typedef int irqreturn_t ;


 scalar_t__ DAS16M1_CLR_INTR_REG ;
 int DAS16M1_CS_IRQDATA ;
 int DAS16M1_CS_OVRUN ;
 scalar_t__ DAS16M1_CS_REG ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int das16m1_handler (struct comedi_device*,int) ;
 int dev_err (int ,char*) ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t das16m1_interrupt(int irq, void *d)
{
 int status;
 struct comedi_device *dev = d;

 if (!dev->attached) {
  dev_err(dev->class_dev, "premature interrupt\n");
  return IRQ_HANDLED;
 }

 spin_lock(&dev->spinlock);

 status = inb(dev->iobase + DAS16M1_CS_REG);

 if ((status & (DAS16M1_CS_IRQDATA | DAS16M1_CS_OVRUN)) == 0) {
  dev_err(dev->class_dev, "spurious interrupt\n");
  spin_unlock(&dev->spinlock);
  return IRQ_NONE;
 }

 das16m1_handler(dev, status);


 outb(0, dev->iobase + DAS16M1_CLR_INTR_REG);

 spin_unlock(&dev->spinlock);
 return IRQ_HANDLED;
}
