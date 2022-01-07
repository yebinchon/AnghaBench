
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int type; scalar_t__ private; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ mmio; } ;


 unsigned int COMEDI_INPUT ;
 unsigned int COMEDI_OUTPUT ;
 int COMEDI_SUBD_DIO ;
 unsigned int CR_CHAN (int ) ;
 int EINVAL ;




 unsigned int NI_65XX_CHAN_TO_MASK (unsigned int) ;
 unsigned long NI_65XX_CHAN_TO_PORT (unsigned int) ;
 scalar_t__ NI_65XX_FILTER_ENA (unsigned int) ;
 scalar_t__ NI_65XX_FILTER_REG ;
 unsigned int NI_65XX_IO_SEL_INPUT ;
 unsigned int NI_65XX_IO_SEL_OUTPUT ;
 scalar_t__ NI_65XX_IO_SEL_REG (unsigned int) ;
 unsigned int readb (scalar_t__) ;
 int writeb (unsigned int,scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int ni_65xx_dio_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 unsigned long base_port = (unsigned long)s->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int chan_mask = NI_65XX_CHAN_TO_MASK(chan);
 unsigned int port = base_port + NI_65XX_CHAN_TO_PORT(chan);
 unsigned int interval;
 unsigned int val;

 switch (data[0]) {
 case 128:





  interval = (data[1] + 100) / 200;
  if (interval > 0xfffff)
   interval = 0xfffff;
  data[1] = interval * 200;






  val = readb(dev->mmio + NI_65XX_FILTER_ENA(port));
  if (interval) {
   writel(interval, dev->mmio + NI_65XX_FILTER_REG);
   val |= chan_mask;
  } else {
   val &= ~chan_mask;
  }
  writeb(val, dev->mmio + NI_65XX_FILTER_ENA(port));
  break;

 case 130:
  if (s->type != COMEDI_SUBD_DIO)
   return -EINVAL;
  writeb(NI_65XX_IO_SEL_OUTPUT,
         dev->mmio + NI_65XX_IO_SEL_REG(port));
  break;

 case 131:
  if (s->type != COMEDI_SUBD_DIO)
   return -EINVAL;
  writeb(NI_65XX_IO_SEL_INPUT,
         dev->mmio + NI_65XX_IO_SEL_REG(port));
  break;

 case 129:
  if (s->type != COMEDI_SUBD_DIO)
   return -EINVAL;
  val = readb(dev->mmio + NI_65XX_IO_SEL_REG(port));
  data[1] = (val == NI_65XX_IO_SEL_INPUT) ? COMEDI_INPUT
       : COMEDI_OUTPUT;
  break;

 default:
  return -EINVAL;
 }

 return insn->n;
}
