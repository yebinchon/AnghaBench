
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 int DPR_SUBSYS_AO ;
 int dt3k_writesingle (struct comedi_device*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int dt3k_ao_insn_write(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int val = s->readback[chan];
 int i;

 for (i = 0; i < insn->n; i++) {
  val = data[i];
  dt3k_writesingle(dev, DPR_SUBSYS_AO, chan, val);
 }
 s->readback[chan] = val;

 return insn->n;
}
