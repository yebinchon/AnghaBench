
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ APCI2200_DO_REG ;
 scalar_t__ APCI2200_WDOG_REG ;
 int addi_watchdog_reset (scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int apci2200_reset(struct comedi_device *dev)
{
 outw(0x0, dev->iobase + APCI2200_DO_REG);

 addi_watchdog_reset(dev->iobase + APCI2200_WDOG_REG);

 return 0;
}
