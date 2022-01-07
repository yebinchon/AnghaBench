
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci230_private {scalar_t__ ao_bipolar; } ;
struct pci230_board {int ao_bits; } ;
struct comedi_device {struct pci230_private* private; struct pci230_board* board_ptr; } ;



__attribute__((used)) static unsigned short pci230_ao_mangle_datum(struct comedi_device *dev,
          unsigned short datum)
{
 const struct pci230_board *board = dev->board_ptr;
 struct pci230_private *devpriv = dev->private;





 datum <<= (16 - board->ao_bits);




 if (devpriv->ao_bipolar)
  datum ^= 0x8000;
 return datum;
}
