
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned char AIO12_8_ADC_ACQ_3USEC ;
 unsigned char AIO12_8_ADC_CHAN (unsigned int) ;
 unsigned char AIO12_8_ADC_MODE_NORMAL ;
 unsigned char AIO12_8_ADC_RANGE (unsigned int) ;
 scalar_t__ AIO12_8_ADC_REG ;
 scalar_t__ AIO12_8_STATUS_REG ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int aio_aio12_8_ai_eoc ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 scalar_t__ comedi_range_is_bipolar (struct comedi_subdevice*,unsigned int) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int inb (scalar_t__) ;
 unsigned int inw (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static int aio_aio12_8_ai_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned int val;
 unsigned char control;
 int ret;
 int i;





 control = AIO12_8_ADC_MODE_NORMAL | AIO12_8_ADC_ACQ_3USEC |
    AIO12_8_ADC_RANGE(range) | AIO12_8_ADC_CHAN(chan);


 inb(dev->iobase + AIO12_8_STATUS_REG);

 for (i = 0; i < insn->n; i++) {

  outb(control, dev->iobase + AIO12_8_ADC_REG);


  ret = comedi_timeout(dev, s, insn, aio_aio12_8_ai_eoc, 0);
  if (ret)
   return ret;

  val = inw(dev->iobase + AIO12_8_ADC_REG) & s->maxdata;


  if (comedi_range_is_bipolar(s, range))
   val = comedi_offset_munge(s, val);

  data[i] = val;
 }

 return insn->n;
}
