
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt2815_private {unsigned int* ao_readback; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct dt2815_private* private; } ;


 int CR_CHAN (int ) ;

__attribute__((used)) static int dt2815_ao_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 struct dt2815_private *devpriv = dev->private;
 int i;
 int chan = CR_CHAN(insn->chanspec);

 for (i = 0; i < insn->n; i++)
  data[i] = devpriv->ao_readback[chan];

 return i;
}
