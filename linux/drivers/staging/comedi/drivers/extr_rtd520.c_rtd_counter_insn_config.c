
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtd_private {unsigned int* timer_gate_src; unsigned int* timer_clk_src; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ mmio; struct rtd_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;




 scalar_t__ LAS0_8254_CLK_SEL (unsigned int) ;
 scalar_t__ LAS0_8254_GATE_SEL (unsigned int) ;
 unsigned int RTD_CLOCK_BASE ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static int rtd_counter_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 struct rtd_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int max_src;
 unsigned int src;

 switch (data[0]) {
 case 128:
  src = data[2];
  max_src = (chan == 0) ? 3 : 4;
  if (src > max_src)
   return -EINVAL;

  devpriv->timer_gate_src[chan] = src;
  writeb(src, dev->mmio + LAS0_8254_GATE_SEL(chan));
  break;
 case 130:
  data[2] = devpriv->timer_gate_src[chan];
  break;
 case 129:
  src = data[1];
  switch (chan) {
  case 0:
   max_src = 3;
   break;
  case 1:
   max_src = 5;
   break;
  case 2:
   max_src = 4;
   break;
  default:
   return -EINVAL;
  }
  if (src > max_src)
   return -EINVAL;

  devpriv->timer_clk_src[chan] = src;
  writeb(src, dev->mmio + LAS0_8254_CLK_SEL(chan));
  break;
 case 131:
  src = devpriv->timer_clk_src[chan];
  data[1] = devpriv->timer_clk_src[chan];
  data[2] = (src == 0) ? RTD_CLOCK_BASE : 0;
  break;
 default:
  return -EINVAL;
 }

 return insn->n;
}
