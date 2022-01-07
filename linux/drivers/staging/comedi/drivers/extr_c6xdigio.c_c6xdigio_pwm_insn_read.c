
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;

__attribute__((used)) static int c6xdigio_pwm_insn_read(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int val;
 int i;

 val = (s->state >> (16 * chan)) & 0xffff;

 for (i = 0; i < insn->n; i++)
  data[i] = val;

 return insn->n;
}
