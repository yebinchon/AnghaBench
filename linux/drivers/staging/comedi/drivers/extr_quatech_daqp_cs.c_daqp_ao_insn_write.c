
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct daqp_private {scalar_t__ stop; } ;
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct daqp_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ DAQP_AO_REG ;
 scalar_t__ DAQP_AUX_REG ;
 int EIO ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int daqp_ao_empty ;
 int outb (int ,scalar_t__) ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static int daqp_ao_insn_write(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 struct daqp_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 int i;

 if (devpriv->stop)
  return -EIO;


 outb(0, dev->iobase + DAQP_AUX_REG);

 for (i = 0; i < insn->n; i++) {
  unsigned int val = data[i];
  int ret;


  ret = comedi_timeout(dev, s, insn, daqp_ao_empty, 0);
  if (ret)
   return ret;


  outw((chan << 12) | comedi_offset_munge(s, val),
       dev->iobase + DAQP_AO_REG);

  s->readback[chan] = val;
 }

 return insn->n;
}
