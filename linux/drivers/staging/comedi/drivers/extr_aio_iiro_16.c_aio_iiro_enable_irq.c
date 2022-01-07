
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ AIO_IIRO_16_IRQ ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void aio_iiro_enable_irq(struct comedi_device *dev, bool enable)
{
 if (enable)
  inb(dev->iobase + AIO_IIRO_16_IRQ);
 else
  outb(0, dev->iobase + AIO_IIRO_16_IRQ);
}
