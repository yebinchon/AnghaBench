
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct cb_pcimdas_private* private; } ;
struct cb_pcimdas_private {scalar_t__ daqio; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ PCIMDAS_AO_REG (unsigned int) ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static int cb_pcimdas_ao_insn_write(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 struct cb_pcimdas_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int val = s->readback[chan];
 int i;

 for (i = 0; i < insn->n; i++) {
  val = data[i];
  outw(val, devpriv->daqio + PCIMDAS_AO_REG(chan));
 }
 s->readback[chan] = val;

 return insn->n;
}
