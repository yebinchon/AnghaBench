
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct atmio16d_private* private; } ;
struct atmio16d_private {scalar_t__ adc_coding; } ;


 scalar_t__ AD_FIFO_REG ;
 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 scalar_t__ MUX_GAIN_REG ;
 scalar_t__ START_CONVERT_REG ;
 scalar_t__ adc_2comp ;
 int atmio16d_ai_eoc ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 unsigned int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int atmio16d_ai_insn_read(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 struct atmio16d_private *devpriv = dev->private;
 int i;
 int chan;
 int gain;
 int ret;

 chan = CR_CHAN(insn->chanspec);
 gain = CR_RANGE(insn->chanspec);







 outw(chan | (gain << 6), dev->iobase + MUX_GAIN_REG);

 for (i = 0; i < insn->n; i++) {

  outw(0, dev->iobase + START_CONVERT_REG);


  ret = comedi_timeout(dev, s, insn, atmio16d_ai_eoc, 0);
  if (ret)
   return ret;


  data[i] = inw(dev->iobase + AD_FIFO_REG);

  if (devpriv->adc_coding == adc_2comp)
   data[i] ^= 0x800;
 }

 return i;
}
