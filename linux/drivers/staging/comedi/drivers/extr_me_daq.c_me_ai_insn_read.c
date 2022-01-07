
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct me_private_data {int ctrl2; unsigned int ctrl1; } ;
struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ mmio; struct me_private_data* private; } ;


 unsigned int AREF_DIFF ;
 unsigned int CR_AREF (int ) ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int EINVAL ;
 unsigned int ME_AI_FIFO_CHANLIST_CHAN (unsigned int) ;
 unsigned int ME_AI_FIFO_CHANLIST_DIFF ;
 unsigned int ME_AI_FIFO_CHANLIST_GAIN (unsigned int) ;
 unsigned int ME_AI_FIFO_CHANLIST_UNIPOLAR ;
 scalar_t__ ME_AI_FIFO_REG ;
 unsigned int ME_CTRL1_ADC_MODE_MASK ;
 unsigned int ME_CTRL1_ADC_MODE_SOFT_TRIG ;
 scalar_t__ ME_CTRL1_REG ;
 int ME_CTRL2_ADFIFO_ENA ;
 int ME_CTRL2_CHANLIST_ENA ;
 scalar_t__ ME_CTRL2_REG ;
 scalar_t__ ME_STATUS_REG ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 scalar_t__ comedi_range_is_unipolar (struct comedi_subdevice*,unsigned int) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int me_ai_eoc ;
 unsigned int readw (scalar_t__) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static int me_ai_insn_read(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 struct me_private_data *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned int aref = CR_AREF(insn->chanspec);
 unsigned int val;
 int ret = 0;
 int i;





 if (aref & AREF_DIFF) {
  if (chan > 7 || comedi_range_is_unipolar(s, range))
   return -EINVAL;
 }


 devpriv->ctrl2 &= ~(ME_CTRL2_ADFIFO_ENA | ME_CTRL2_CHANLIST_ENA);
 writew(devpriv->ctrl2, dev->mmio + ME_CTRL2_REG);

 writew(0x00, dev->mmio + ME_STATUS_REG);


 devpriv->ctrl2 |= (ME_CTRL2_ADFIFO_ENA | ME_CTRL2_CHANLIST_ENA);
 writew(devpriv->ctrl2, dev->mmio + ME_CTRL2_REG);


 val = ME_AI_FIFO_CHANLIST_CHAN(chan) | ME_AI_FIFO_CHANLIST_GAIN(range);
 if (comedi_range_is_unipolar(s, range))
  val |= ME_AI_FIFO_CHANLIST_UNIPOLAR;
 if (aref & AREF_DIFF)
  val |= ME_AI_FIFO_CHANLIST_DIFF;
 writew(val, dev->mmio + ME_AI_FIFO_REG);


 devpriv->ctrl1 |= ME_CTRL1_ADC_MODE_SOFT_TRIG;
 writew(devpriv->ctrl1, dev->mmio + ME_CTRL1_REG);

 for (i = 0; i < insn->n; i++) {

  readw(dev->mmio + ME_CTRL1_REG);


  ret = comedi_timeout(dev, s, insn, me_ai_eoc, 0);
  if (ret)
   break;


  val = readw(dev->mmio + ME_AI_FIFO_REG) & s->maxdata;


  data[i] = comedi_offset_munge(s, val);
 }


 devpriv->ctrl1 &= ~ME_CTRL1_ADC_MODE_MASK;
 writew(devpriv->ctrl1, dev->mmio + ME_CTRL1_REG);

 return ret ? ret : insn->n;
}
