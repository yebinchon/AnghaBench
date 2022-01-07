
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtd_private {scalar_t__ las1; } ;
struct comedi_subdevice {unsigned short maxdata; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ mmio; struct rtd_private* private; } ;


 unsigned int CR_RANGE (int ) ;
 scalar_t__ LAS0_ADC ;
 scalar_t__ LAS0_ADC_CONVERSION ;
 scalar_t__ LAS0_ADC_FIFO_CLEAR ;
 scalar_t__ LAS1_ADC_FIFO ;
 unsigned short comedi_offset_munge (struct comedi_subdevice*,unsigned short) ;
 scalar_t__ comedi_range_is_bipolar (struct comedi_subdevice*,unsigned int) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 unsigned short readw (scalar_t__) ;
 int rtd_ai_eoc ;
 int rtd_load_channelgain_list (struct comedi_device*,int,int *) ;
 int writel (int ,scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int rtd_ai_rinsn(struct comedi_device *dev,
   struct comedi_subdevice *s, struct comedi_insn *insn,
   unsigned int *data)
{
 struct rtd_private *devpriv = dev->private;
 unsigned int range = CR_RANGE(insn->chanspec);
 int ret;
 int n;


 writel(0, dev->mmio + LAS0_ADC_FIFO_CLEAR);


 rtd_load_channelgain_list(dev, 1, &insn->chanspec);


 writel(0, dev->mmio + LAS0_ADC_CONVERSION);


 for (n = 0; n < insn->n; n++) {
  unsigned short d;

  writew(0, dev->mmio + LAS0_ADC);

  ret = comedi_timeout(dev, s, insn, rtd_ai_eoc, 0);
  if (ret)
   return ret;


  d = readw(devpriv->las1 + LAS1_ADC_FIFO);
  d >>= 3;


  if (comedi_range_is_bipolar(s, range))
   d = comedi_offset_munge(s, d);

  data[n] = d & s->maxdata;
 }


 return n;
}
