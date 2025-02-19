
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;

int comedi_readback_insn_read(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 int i;

 if (!s->readback)
  return -EINVAL;

 for (i = 0; i < insn->n; i++)
  data[i] = s->readback[chan];

 return insn->n;
}
