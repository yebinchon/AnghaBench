
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {unsigned long iobase; } ;


 int PCI9111_INT_CTRL_FFEN ;
 unsigned long PCI9111_INT_CTRL_REG ;
 int outb (int ,unsigned long) ;

__attribute__((used)) static void pci9111_fifo_reset(struct comedi_device *dev)
{
 unsigned long int_ctrl_reg = dev->iobase + PCI9111_INT_CTRL_REG;


 outb(0, int_ctrl_reg);
 outb(PCI9111_INT_CTRL_FFEN, int_ctrl_reg);
 outb(0, int_ctrl_reg);
}
