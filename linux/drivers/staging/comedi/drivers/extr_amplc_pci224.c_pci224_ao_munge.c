
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci224_board {int ao_bits; int* ao_hwrange; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct pci224_board* board_ptr; } ;
struct comedi_cmd {int * chanlist; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 size_t CR_RANGE (int ) ;
 int PCI224_DACCON_POLAR_MASK ;
 int PCI224_DACCON_POLAR_UNI ;

__attribute__((used)) static void
pci224_ao_munge(struct comedi_device *dev, struct comedi_subdevice *s,
  void *data, unsigned int num_bytes, unsigned int chan_index)
{
 const struct pci224_board *board = dev->board_ptr;
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned short *array = data;
 unsigned int length = num_bytes / sizeof(*array);
 unsigned int offset;
 unsigned int shift;
 unsigned int i;


 shift = 16 - board->ao_bits;

 if ((board->ao_hwrange[CR_RANGE(cmd->chanlist[0])] &
      PCI224_DACCON_POLAR_MASK) == PCI224_DACCON_POLAR_UNI) {

  offset = 0;
 } else {

  offset = 32768;
 }

 for (i = 0; i < length; i++)
  array[i] = (array[i] << shift) - offset;
}
