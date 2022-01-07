
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ AO_CHAN_OFFSET ;
 scalar_t__ AO_VALUE_OFFSET ;
 unsigned int CR_CHAN (int ) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int ni_670x_ao_insn_write(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int val = s->readback[chan];
 int i;
 for (i = 0; i < insn->n; i++) {
  val = data[i];

  writel(((chan & 15) << 1) | ((chan & 16) >> 4),
         dev->mmio + AO_CHAN_OFFSET);

  writel(val, dev->mmio + AO_VALUE_OFFSET);
 }
 s->readback[chan] = val;

 return insn->n;
}
