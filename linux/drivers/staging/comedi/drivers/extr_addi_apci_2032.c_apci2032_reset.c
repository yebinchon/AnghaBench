
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ APCI2032_DO_REG ;
 scalar_t__ APCI2032_INT_CTRL_REG ;
 scalar_t__ APCI2032_WDOG_REG ;
 int addi_watchdog_reset (scalar_t__) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static int apci2032_reset(struct comedi_device *dev)
{
 outl(0x0, dev->iobase + APCI2032_DO_REG);
 outl(0x0, dev->iobase + APCI2032_INT_CTRL_REG);

 addi_watchdog_reset(dev->iobase + APCI2032_WDOG_REG);

 return 0;
}
