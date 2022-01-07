
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
typedef int s16 ;


 unsigned int CR_CHAN (int ) ;
 int s626_set_dac (struct comedi_device*,unsigned int,int) ;

__attribute__((used)) static int s626_ao_insn_write(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 int i;

 for (i = 0; i < insn->n; i++) {
  s16 dacdata = (s16)data[i];
  int ret;

  dacdata -= (0x1fff);

  ret = s626_set_dac(dev, chan, dacdata);
  if (ret)
   return ret;

  s->readback[chan] = data[i];
 }

 return insn->n;
}
