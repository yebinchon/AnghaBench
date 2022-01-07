
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; struct boardtype* board_ptr; } ;
struct boardtype {scalar_t__ has_ao; } ;


 scalar_t__ PCI171X_CLRFIFO_REG ;
 scalar_t__ PCI171X_CLRINT_REG ;
 scalar_t__ PCI171X_CTRL_REG ;
 scalar_t__ PCI171X_DAREF_REG ;
 scalar_t__ PCI171X_DA_REG (int) ;
 scalar_t__ PCI171X_DO_REG ;
 int outb (int ,scalar_t__) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static void pci1710_reset(struct comedi_device *dev)
{
 const struct boardtype *board = dev->board_ptr;





 outw(0, dev->iobase + PCI171X_CTRL_REG);


 outb(0, dev->iobase + PCI171X_CLRFIFO_REG);
 outb(0, dev->iobase + PCI171X_CLRINT_REG);

 if (board->has_ao) {

  outb(0, dev->iobase + PCI171X_DAREF_REG);
  outw(0, dev->iobase + PCI171X_DA_REG(0));
  outw(0, dev->iobase + PCI171X_DA_REG(1));
 }


 outw(0, dev->iobase + PCI171X_DO_REG);
}
