
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waveform_private {unsigned int* ao_loopbacks; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct waveform_private* private; } ;


 int CR_CHAN (int ) ;

__attribute__((used)) static int waveform_ai_insn_read(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 struct waveform_private *devpriv = dev->private;
 int i, chan = CR_CHAN(insn->chanspec);

 for (i = 0; i < insn->n; i++)
  data[i] = devpriv->ao_loopbacks[chan];

 return insn->n;
}
