
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; struct apci1564_private* private; } ;
struct apci1564_private {long counters; scalar_t__ timer; } ;


 unsigned long ADDI_TCW_CTRL_REG ;
 scalar_t__ ADDI_TCW_RELOAD_REG ;
 scalar_t__ APCI1564_COUNTER (int) ;
 scalar_t__ APCI1564_DI_INT_MODE1_REG ;
 scalar_t__ APCI1564_DI_INT_MODE2_REG ;
 scalar_t__ APCI1564_DI_INT_STATUS_REG ;
 scalar_t__ APCI1564_DI_IRQ_REG ;
 scalar_t__ APCI1564_DO_INT_CTRL_REG ;
 scalar_t__ APCI1564_DO_REG ;
 scalar_t__ APCI1564_WDOG_IOBASE ;
 int addi_watchdog_reset (scalar_t__) ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static int apci1564_reset(struct comedi_device *dev)
{
 struct apci1564_private *devpriv = dev->private;


 outl(0x0, dev->iobase + APCI1564_DI_IRQ_REG);
 inl(dev->iobase + APCI1564_DI_INT_STATUS_REG);
 outl(0x0, dev->iobase + APCI1564_DI_INT_MODE1_REG);
 outl(0x0, dev->iobase + APCI1564_DI_INT_MODE2_REG);


 outl(0x0, dev->iobase + APCI1564_DO_REG);
 outl(0x0, dev->iobase + APCI1564_DO_INT_CTRL_REG);


 addi_watchdog_reset(dev->iobase + APCI1564_WDOG_IOBASE);


 outl(0x0, devpriv->timer + ADDI_TCW_CTRL_REG);
 outl(0x0, devpriv->timer + ADDI_TCW_RELOAD_REG);

 if (devpriv->counters) {
  unsigned long iobase = devpriv->counters + ADDI_TCW_CTRL_REG;


  outl(0x0, iobase + APCI1564_COUNTER(0));
  outl(0x0, iobase + APCI1564_COUNTER(1));
  outl(0x0, iobase + APCI1564_COUNTER(2));
 }

 return 0;
}
