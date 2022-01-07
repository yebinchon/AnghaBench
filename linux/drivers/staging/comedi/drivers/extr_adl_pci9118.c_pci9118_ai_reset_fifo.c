
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ PCI9118_FIFO_RESET_REG ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static void pci9118_ai_reset_fifo(struct comedi_device *dev)
{

 outl(0, dev->iobase + PCI9118_FIFO_RESET_REG);
}
