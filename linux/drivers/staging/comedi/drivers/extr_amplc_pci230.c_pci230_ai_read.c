
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci230_private {scalar_t__ ai_bipolar; scalar_t__ daqio; } ;
struct pci230_board {int ai_bits; } ;
struct comedi_device {struct pci230_private* private; struct pci230_board* board_ptr; } ;


 scalar_t__ PCI230_ADCDATA ;
 unsigned short inw (scalar_t__) ;

__attribute__((used)) static unsigned short pci230_ai_read(struct comedi_device *dev)
{
 const struct pci230_board *board = dev->board_ptr;
 struct pci230_private *devpriv = dev->private;
 unsigned short data;


 data = inw(devpriv->daqio + PCI230_ADCDATA);







 if (devpriv->ai_bipolar)
  data ^= 0x8000;
 data >>= (16 - board->ai_bits);
 return data;
}
