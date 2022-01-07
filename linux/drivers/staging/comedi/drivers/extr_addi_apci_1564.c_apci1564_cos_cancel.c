
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ APCI1564_DI_INT_MODE1_REG ;
 scalar_t__ APCI1564_DI_INT_MODE2_REG ;
 scalar_t__ APCI1564_DI_INT_STATUS_REG ;
 scalar_t__ APCI1564_DI_IRQ_REG ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static int apci1564_cos_cancel(struct comedi_device *dev,
          struct comedi_subdevice *s)
{
 outl(0x0, dev->iobase + APCI1564_DI_IRQ_REG);
 inl(dev->iobase + APCI1564_DI_INT_STATUS_REG);
 outl(0x0, dev->iobase + APCI1564_DI_INT_MODE1_REG);
 outl(0x0, dev->iobase + APCI1564_DI_INT_MODE2_REG);

 return 0;
}
