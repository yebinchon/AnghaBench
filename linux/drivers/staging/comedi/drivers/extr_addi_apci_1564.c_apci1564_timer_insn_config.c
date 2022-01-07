
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct apci1564_private* private; } ;
struct apci1564_private {scalar_t__ timer; } ;


 unsigned int ADDI_TCW_CTRL_IRQ_ENA ;
 scalar_t__ ADDI_TCW_CTRL_REG ;
 unsigned int ADDI_TCW_CTRL_TIMER_ENA ;
 scalar_t__ ADDI_TCW_RELOAD_REG ;
 unsigned int ADDI_TCW_STATUS_OVERFLOW ;
 scalar_t__ ADDI_TCW_STATUS_REG ;
 scalar_t__ ADDI_TCW_TIMEBASE_REG ;
 unsigned int COMEDI_COUNTER_ARMED ;
 unsigned int COMEDI_COUNTER_COUNTING ;
 unsigned int COMEDI_COUNTER_TERMINAL_COUNT ;
 int EINVAL ;





 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;

__attribute__((used)) static int apci1564_timer_insn_config(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 struct apci1564_private *devpriv = dev->private;
 unsigned int val;

 switch (data[0]) {
 case 132:
  if (data[1] > s->maxdata)
   return -EINVAL;
  outl(data[1], devpriv->timer + ADDI_TCW_RELOAD_REG);
  outl(ADDI_TCW_CTRL_IRQ_ENA | ADDI_TCW_CTRL_TIMER_ENA,
       devpriv->timer + ADDI_TCW_CTRL_REG);
  break;
 case 131:
  outl(0x0, devpriv->timer + ADDI_TCW_CTRL_REG);
  break;
 case 129:
  data[1] = 0;
  val = inl(devpriv->timer + ADDI_TCW_CTRL_REG);
  if (val & ADDI_TCW_CTRL_IRQ_ENA)
   data[1] |= COMEDI_COUNTER_ARMED;
  if (val & ADDI_TCW_CTRL_TIMER_ENA)
   data[1] |= COMEDI_COUNTER_COUNTING;
  val = inl(devpriv->timer + ADDI_TCW_STATUS_REG);
  if (val & ADDI_TCW_STATUS_OVERFLOW)
   data[1] |= COMEDI_COUNTER_TERMINAL_COUNT;
  data[2] = COMEDI_COUNTER_ARMED | COMEDI_COUNTER_COUNTING |
     COMEDI_COUNTER_TERMINAL_COUNT;
  break;
 case 128:
  if (data[2] > s->maxdata)
   return -EINVAL;
  outl(data[1], devpriv->timer + ADDI_TCW_TIMEBASE_REG);
  outl(data[2], devpriv->timer + ADDI_TCW_RELOAD_REG);
  break;
 case 130:
  data[1] = inl(devpriv->timer + ADDI_TCW_TIMEBASE_REG);
  data[2] = inl(devpriv->timer + ADDI_TCW_RELOAD_REG);
  break;
 default:
  return -EINVAL;
 }

 return insn->n;
}
