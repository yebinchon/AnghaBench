
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtd_private {scalar_t__ las1; } ;
struct comedi_subdevice {int maxdata; unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ mmio; struct rtd_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 scalar_t__ LAS0_DAC_CTRL (unsigned int) ;
 scalar_t__ LAS0_UPDATE_DAC (unsigned int) ;
 scalar_t__ LAS1_DAC_FIFO (unsigned int) ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 scalar_t__ comedi_range_is_bipolar (struct comedi_subdevice*,unsigned int) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int rtd_ao_eoc ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static int rtd_ao_insn_write(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 struct rtd_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 int ret;
 int i;


 writew(range & 7, dev->mmio + LAS0_DAC_CTRL(chan));

 for (i = 0; i < insn->n; ++i) {
  unsigned int val = data[i];


  if (comedi_range_is_bipolar(s, range)) {
   val = comedi_offset_munge(s, val);
   val |= (val & ((s->maxdata + 1) >> 1)) << 1;
  }


  val <<= 3;

  writew(val, devpriv->las1 + LAS1_DAC_FIFO(chan));
  writew(0, dev->mmio + LAS0_UPDATE_DAC(chan));

  ret = comedi_timeout(dev, s, insn, rtd_ao_eoc, 0);
  if (ret)
   return ret;

  s->readback[chan] = data[i];
 }

 return insn->n;
}
