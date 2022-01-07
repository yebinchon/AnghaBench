
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ APCI1032_CTRL_REG ;
 scalar_t__ APCI1032_MODE1_REG ;
 scalar_t__ APCI1032_MODE2_REG ;
 scalar_t__ APCI1032_STATUS_REG ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static int apci1032_reset(struct comedi_device *dev)
{

 outl(0x0, dev->iobase + APCI1032_CTRL_REG);

 inl(dev->iobase + APCI1032_STATUS_REG);

 outl(0x0, dev->iobase + APCI1032_MODE1_REG);
 outl(0x0, dev->iobase + APCI1032_MODE2_REG);

 return 0;
}
