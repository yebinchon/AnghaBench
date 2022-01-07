
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int PARPORT_CTRL_IRQ_ENA ;
 scalar_t__ PARPORT_CTRL_REG ;
 unsigned int inb (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int parport_intr_cancel(struct comedi_device *dev,
          struct comedi_subdevice *s)
{
 unsigned int ctrl;

 ctrl = inb(dev->iobase + PARPORT_CTRL_REG);
 ctrl &= ~PARPORT_CTRL_IRQ_ENA;
 outb(ctrl, dev->iobase + PARPORT_CTRL_REG);

 return 0;
}
