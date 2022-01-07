
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci224_private {unsigned short daccon; } ;
struct pci224_board {int ao_bits; int * ao_hwrange; } ;
struct comedi_device {scalar_t__ iobase; struct pci224_private* private; struct pci224_board* board_ptr; } ;


 unsigned short COMBINE (unsigned short,int ,int) ;
 scalar_t__ PCI224_DACCEN ;
 scalar_t__ PCI224_DACCON ;
 unsigned short PCI224_DACCON_FIFORESET ;
 int PCI224_DACCON_POLAR_BI ;
 int PCI224_DACCON_POLAR_MASK ;
 int PCI224_DACCON_VREF_MASK ;
 scalar_t__ PCI224_DACDATA ;
 scalar_t__ PCI224_SOFTTRIG ;
 int inw (scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;

__attribute__((used)) static void
pci224_ao_set_data(struct comedi_device *dev, int chan, int range,
     unsigned int data)
{
 const struct pci224_board *board = dev->board_ptr;
 struct pci224_private *devpriv = dev->private;
 unsigned short mangled;


 outw(1 << chan, dev->iobase + PCI224_DACCEN);

 devpriv->daccon = COMBINE(devpriv->daccon, board->ao_hwrange[range],
      PCI224_DACCON_POLAR_MASK |
      PCI224_DACCON_VREF_MASK);
 outw(devpriv->daccon | PCI224_DACCON_FIFORESET,
      dev->iobase + PCI224_DACCON);





 mangled = (unsigned short)data << (16 - board->ao_bits);
 if ((devpriv->daccon & PCI224_DACCON_POLAR_MASK) ==
     PCI224_DACCON_POLAR_BI) {
  mangled ^= 0x8000;
 }

 outw(mangled, dev->iobase + PCI224_DACDATA);

 inw(dev->iobase + PCI224_SOFTTRIG);
}
