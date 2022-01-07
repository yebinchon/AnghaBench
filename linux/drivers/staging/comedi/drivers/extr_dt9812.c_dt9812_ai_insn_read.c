
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 int DT9812_GAIN_1 ;
 int dt9812_analog_in (struct comedi_device*,unsigned int,unsigned int*,int ) ;

__attribute__((used)) static int dt9812_ai_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 u16 val = 0;
 int ret;
 int i;

 for (i = 0; i < insn->n; i++) {
  ret = dt9812_analog_in(dev, chan, &val, DT9812_GAIN_1);
  if (ret)
   return ret;
  data[i] = val;
 }

 return insn->n;
}
