
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ PCI9118_AI_AUTOSCAN_MODE_REG ;
 scalar_t__ PCI9118_AI_BURST_NUM_REG ;
 scalar_t__ PCI9118_AI_CFG_REG ;
 scalar_t__ PCI9118_AI_CTRL_REG ;
 scalar_t__ PCI9118_AI_STATUS_REG ;
 scalar_t__ PCI9118_AO_REG (int) ;
 scalar_t__ PCI9118_INT_CTRL_REG ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;
 int pci9118_ai_reset_fifo (struct comedi_device*) ;

__attribute__((used)) static void pci9118_reset(struct comedi_device *dev)
{

 outl(0, dev->iobase + PCI9118_INT_CTRL_REG);
 outl(0, dev->iobase + PCI9118_AI_CTRL_REG);
 outl(0, dev->iobase + PCI9118_AI_CFG_REG);
 pci9118_ai_reset_fifo(dev);


 inl(dev->iobase + PCI9118_INT_CTRL_REG);
 inl(dev->iobase + PCI9118_AI_STATUS_REG);


 outl(0, dev->iobase + PCI9118_AI_BURST_NUM_REG);
 outl(1, dev->iobase + PCI9118_AI_AUTOSCAN_MODE_REG);
 outl(2, dev->iobase + PCI9118_AI_AUTOSCAN_MODE_REG);


 outl(2047, dev->iobase + PCI9118_AO_REG(0));
 outl(2047, dev->iobase + PCI9118_AO_REG(1));
}
