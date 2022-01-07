
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int io_bits; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int CR_CHAN (int ) ;
 int EINVAL ;




int comedi_dio_insn_config(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data,
      unsigned int mask)
{
 unsigned int chan_mask = 1 << CR_CHAN(insn->chanspec);

 if (!mask)
  mask = chan_mask;

 switch (data[0]) {
 case 130:
  s->io_bits &= ~mask;
  break;

 case 129:
  s->io_bits |= mask;
  break;

 case 128:
  data[1] = (s->io_bits & mask) ? COMEDI_OUTPUT : COMEDI_INPUT;
  return insn->n;

 default:
  return -EINVAL;
 }

 return 0;
}
