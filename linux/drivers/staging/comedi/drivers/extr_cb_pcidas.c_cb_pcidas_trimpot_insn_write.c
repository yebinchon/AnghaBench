
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 int cb_pcidas_trimpot_write (struct comedi_device*,unsigned int,unsigned int) ;

__attribute__((used)) static int cb_pcidas_trimpot_insn_write(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);

 if (insn->n) {
  unsigned int val = data[insn->n - 1];

  if (s->readback[chan] != val) {
   cb_pcidas_trimpot_write(dev, chan, val);
   s->readback[chan] = val;
  }
 }

 return insn->n;
}
