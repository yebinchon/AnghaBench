
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct apci1500_private* private; } ;
struct apci1500_private {unsigned int clk_src; scalar_t__ addon; } ;


 scalar_t__ APCI1500_CLK_SEL_REG ;
 unsigned int COMEDI_COUNTER_ARMED ;
 unsigned int COMEDI_COUNTER_COUNTING ;
 unsigned int COMEDI_COUNTER_TERMINAL_COUNT ;
 unsigned int CR_CHAN (int ) ;
 int EINVAL ;
 unsigned int Z8536_CT_CMDSTAT_GCB ;
 int Z8536_CT_CMDSTAT_REG (unsigned int) ;
 unsigned int Z8536_CT_MODE_CSC ;
 unsigned int Z8536_CT_MODE_DCS_ONESHOT ;
 unsigned int Z8536_CT_MODE_DCS_PULSE ;
 unsigned int Z8536_CT_MODE_DCS_SQRWAVE ;
 unsigned int Z8536_CT_MODE_ECE ;
 unsigned int Z8536_CT_MODE_EGE ;
 unsigned int Z8536_CT_MODE_EOE ;
 unsigned int Z8536_CT_MODE_ETE ;
 unsigned int Z8536_CT_MODE_REB ;
 int Z8536_CT_MODE_REG (unsigned int) ;
 int Z8536_CT_RELOAD_LSB_REG (unsigned int) ;
 int Z8536_CT_RELOAD_MSB_REG (unsigned int) ;
 unsigned int Z8536_CT_STAT_CIP ;
 unsigned int Z8536_STAT_IP ;
 int apci1500_ack_irq (struct comedi_device*,int ) ;
 int apci1500_timer_enable (struct comedi_device*,unsigned int,int) ;
 int outw (int,scalar_t__) ;
 unsigned int z8536_read (struct comedi_device*,int ) ;
 int z8536_write (struct comedi_device*,unsigned int,int ) ;

__attribute__((used)) static int apci1500_timer_insn_config(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 struct apci1500_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int val;

 switch (data[0]) {
 case 135:
  val = data[1] & s->maxdata;
  z8536_write(dev, val & 0xff, Z8536_CT_RELOAD_LSB_REG(chan));
  z8536_write(dev, (val >> 8) & 0xff,
       Z8536_CT_RELOAD_MSB_REG(chan));

  apci1500_timer_enable(dev, chan, 1);
  z8536_write(dev, Z8536_CT_CMDSTAT_GCB,
       Z8536_CT_CMDSTAT_REG(chan));
  break;
 case 134:
  apci1500_timer_enable(dev, chan, 0);
  break;

 case 132:
  data[1] = 0;
  val = z8536_read(dev, Z8536_CT_CMDSTAT_REG(chan));
  if (val & Z8536_CT_STAT_CIP)
   data[1] |= COMEDI_COUNTER_COUNTING;
  if (val & Z8536_CT_CMDSTAT_GCB)
   data[1] |= COMEDI_COUNTER_ARMED;
  if (val & Z8536_STAT_IP) {
   data[1] |= COMEDI_COUNTER_TERMINAL_COUNT;
   apci1500_ack_irq(dev, Z8536_CT_CMDSTAT_REG(chan));
  }
  data[2] = COMEDI_COUNTER_ARMED | COMEDI_COUNTER_COUNTING |
     COMEDI_COUNTER_TERMINAL_COUNT;
  break;

 case 129:

  switch (data[1]) {
  case 141:

   val = Z8536_CT_MODE_ECE |
         Z8536_CT_MODE_DCS_ONESHOT;
   break;
  case 140:

   val = Z8536_CT_MODE_ETE |
         Z8536_CT_MODE_DCS_ONESHOT;
   break;
  case 139:

   val = Z8536_CT_MODE_CSC |
         Z8536_CT_MODE_DCS_PULSE;
   break;
  case 138:

   val = Z8536_CT_MODE_CSC |
         Z8536_CT_MODE_DCS_SQRWAVE;
   break;
  case 137:

   val = Z8536_CT_MODE_REB |
         Z8536_CT_MODE_DCS_PULSE;
   break;
  case 136:

   val = Z8536_CT_MODE_EOE |
         Z8536_CT_MODE_ETE |
         Z8536_CT_MODE_REB |
         Z8536_CT_MODE_DCS_PULSE;
   break;
  default:
   return -EINVAL;
  }
  apci1500_timer_enable(dev, chan, 0);
  z8536_write(dev, val, Z8536_CT_MODE_REG(chan));
  break;

 case 130:
  if (data[1] > 2)
   return -EINVAL;
  devpriv->clk_src = data[1];
  if (devpriv->clk_src == 2)
   devpriv->clk_src = 3;
  outw(devpriv->clk_src, devpriv->addon + APCI1500_CLK_SEL_REG);
  break;
 case 133:
  switch (devpriv->clk_src) {
  case 0:
   data[1] = 0;
   data[2] = 17879;
   break;
  case 1:
   data[1] = 1;
   data[2] = 573066;
   break;
  case 3:
   data[1] = 2;
   data[2] = 1164822;
   break;
  default:
   return -EINVAL;
  }
  break;

 case 128:
  if (chan == 0)
   return -EINVAL;

  val = z8536_read(dev, Z8536_CT_MODE_REG(chan));
  val &= Z8536_CT_MODE_EGE;
  if (data[1] == 1)
   val |= Z8536_CT_MODE_EGE;
  else if (data[1] > 1)
   return -EINVAL;
  z8536_write(dev, val, Z8536_CT_MODE_REG(chan));
  break;
 case 131:
  if (chan == 0)
   return -EINVAL;
  break;

 default:
  return -EINVAL;
 }
 return insn->n;
}
