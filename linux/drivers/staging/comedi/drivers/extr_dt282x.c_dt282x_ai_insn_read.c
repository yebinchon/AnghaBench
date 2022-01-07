
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt282x_private {int adcsr; int supcsr; scalar_t__ ad_2scomp; } ;
struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct dt282x_private* private; } ;


 int DT2821_ADCSR_ADCLK ;
 int DT2821_ADCSR_ADDONE ;
 int DT2821_ADCSR_MUXBUSY ;
 scalar_t__ DT2821_ADCSR_REG ;
 scalar_t__ DT2821_ADDAT_REG ;
 int DT2821_SUPCSR_PRLD ;
 scalar_t__ DT2821_SUPCSR_REG ;
 int DT2821_SUPCSR_STRIG ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int dt282x_ai_timeout ;
 int dt282x_load_changain (struct comedi_device*,int,int *) ;
 unsigned int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int dt282x_ai_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 struct dt282x_private *devpriv = dev->private;
 unsigned int val;
 int ret;
 int i;


 devpriv->adcsr = DT2821_ADCSR_ADCLK;
 outw(devpriv->adcsr, dev->iobase + DT2821_ADCSR_REG);

 dt282x_load_changain(dev, 1, &insn->chanspec);

 outw(devpriv->supcsr | DT2821_SUPCSR_PRLD,
      dev->iobase + DT2821_SUPCSR_REG);
 ret = comedi_timeout(dev, s, insn,
        dt282x_ai_timeout, DT2821_ADCSR_MUXBUSY);
 if (ret)
  return ret;

 for (i = 0; i < insn->n; i++) {
  outw(devpriv->supcsr | DT2821_SUPCSR_STRIG,
       dev->iobase + DT2821_SUPCSR_REG);

  ret = comedi_timeout(dev, s, insn,
         dt282x_ai_timeout, DT2821_ADCSR_ADDONE);
  if (ret)
   return ret;

  val = inw(dev->iobase + DT2821_ADDAT_REG);
  val &= s->maxdata;
  if (devpriv->ad_2scomp)
   val = comedi_offset_munge(s, val);

  data[i] = val;
 }

 return i;
}
