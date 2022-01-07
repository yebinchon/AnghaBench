
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; struct apci1516_private* private; struct apci1516_boardinfo* board_ptr; } ;
struct apci1516_private {int wdog_iobase; } ;
struct apci1516_boardinfo {int has_wdog; } ;


 scalar_t__ APCI1516_DO_REG ;
 int addi_watchdog_reset (int ) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int apci1516_reset(struct comedi_device *dev)
{
 const struct apci1516_boardinfo *board = dev->board_ptr;
 struct apci1516_private *devpriv = dev->private;

 if (!board->has_wdog)
  return 0;

 outw(0x0, dev->iobase + APCI1516_DO_REG);

 addi_watchdog_reset(devpriv->wdog_iobase);

 return 0;
}
