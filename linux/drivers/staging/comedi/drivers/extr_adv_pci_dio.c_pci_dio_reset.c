
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ PCI173X_INT_CLR_REG ;
 scalar_t__ PCI173X_INT_EN_REG ;
 scalar_t__ PCI173X_INT_RF_REG ;
 scalar_t__ PCI1750_INT_REG ;
 scalar_t__ PCI1752_CFC_REG ;
 scalar_t__ PCI1753E_INT_REG (int) ;
 scalar_t__ PCI1753_INT_REG (int) ;
 scalar_t__ PCI1754_INT_REG (int) ;
 scalar_t__ PCI1761_INT_CLR_REG ;
 scalar_t__ PCI1761_INT_EN_REG ;
 scalar_t__ PCI1761_INT_RF_REG ;
 scalar_t__ PCI1762_INT_REG ;






 unsigned long TYPE_PCI1752 ;






 int outb (int,scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int pci_dio_reset(struct comedi_device *dev, unsigned long cardtype)
{

 if (cardtype == TYPE_PCI1752 || cardtype == 130)
  outw(0, dev->iobase + PCI1752_CFC_REG);


 switch (cardtype) {
 case 139:
 case 138:
 case 137:
  outb(0, dev->iobase + PCI173X_INT_EN_REG);
  outb(0x0f, dev->iobase + PCI173X_INT_CLR_REG);
  outb(0, dev->iobase + PCI173X_INT_RF_REG);
  break;
 case 136:
 case 135:
 case 134:
  outb(0x88, dev->iobase + PCI1750_INT_REG);
  break;
 case 133:
 case 132:
  outb(0x88, dev->iobase + PCI1753_INT_REG(0));
  outb(0x80, dev->iobase + PCI1753_INT_REG(1));
  outb(0x80, dev->iobase + PCI1753_INT_REG(2));
  outb(0x80, dev->iobase + PCI1753_INT_REG(3));
  if (cardtype == 132) {
   outb(0x88, dev->iobase + PCI1753E_INT_REG(0));
   outb(0x80, dev->iobase + PCI1753E_INT_REG(1));
   outb(0x80, dev->iobase + PCI1753E_INT_REG(2));
   outb(0x80, dev->iobase + PCI1753E_INT_REG(3));
  }
  break;
 case 131:
 case 130:
  outw(0x08, dev->iobase + PCI1754_INT_REG(0));
  outw(0x08, dev->iobase + PCI1754_INT_REG(1));
  if (cardtype == 131) {
   outw(0x08, dev->iobase + PCI1754_INT_REG(2));
   outw(0x08, dev->iobase + PCI1754_INT_REG(3));
  }
  break;
 case 129:

  outb(0, dev->iobase + PCI1761_INT_EN_REG);

  outb(0xff, dev->iobase + PCI1761_INT_CLR_REG);

  outb(0, dev->iobase + PCI1761_INT_RF_REG);
  break;
 case 128:
  outw(0x0101, dev->iobase + PCI1762_INT_REG);
  break;
 default:
  break;
 }

 return 0;
}
