
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 int dt9812_analog_out (struct comedi_device*,unsigned int,unsigned int) ;

__attribute__((used)) static int dt9812_ao_insn_write(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 int i;

 for (i = 0; i < insn->n; i++) {
  unsigned int val = data[i];
  int ret;

  ret = dt9812_analog_out(dev, chan, val);
  if (ret)
   return ret;

  s->readback[chan] = val;
 }

 return insn->n;
}
