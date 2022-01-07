
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct s626_private {scalar_t__ ai_convert_count; scalar_t__ ai_cmd_running; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; struct s626_private* private; } ;
struct comedi_cmd {int start_arg; scalar_t__ start_src; scalar_t__ scan_begin_src; int scan_begin_arg; scalar_t__ convert_src; scalar_t__ chanlist_len; int convert_arg; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 int S626_CLKENAB_ALWAYS ;
 int S626_MC1_ERPS1 ;
 int S626_MC2_ADC_RPS ;
 int S626_P_MC1 ;
 int S626_P_MC2 ;
 scalar_t__ TRIG_EXT ;
 scalar_t__ TRIG_TIMER ;
 int s626_dio_reset_irq (struct comedi_device*,int,int) ;
 int s626_dio_set_irq (struct comedi_device*,int) ;
 int s626_mc_enable (struct comedi_device*,int ,int ) ;
 int s626_set_enable (struct comedi_device*,int,int ) ;

__attribute__((used)) static void s626_handle_dio_interrupt(struct comedi_device *dev,
          u16 irqbit, u8 group)
{
 struct s626_private *devpriv = dev->private;
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_cmd *cmd = &s->async->cmd;

 s626_dio_reset_irq(dev, group, irqbit);

 if (devpriv->ai_cmd_running) {

  if ((irqbit >> (cmd->start_arg - (16 * group))) == 1 &&
      cmd->start_src == TRIG_EXT) {

   s626_mc_enable(dev, S626_MC1_ERPS1, S626_P_MC1);

   if (cmd->scan_begin_src == TRIG_EXT)
    s626_dio_set_irq(dev, cmd->scan_begin_arg);
  }
  if ((irqbit >> (cmd->scan_begin_arg - (16 * group))) == 1 &&
      cmd->scan_begin_src == TRIG_EXT) {

   s626_mc_enable(dev, S626_MC2_ADC_RPS, S626_P_MC2);

   if (cmd->convert_src == TRIG_EXT) {
    devpriv->ai_convert_count = cmd->chanlist_len;

    s626_dio_set_irq(dev, cmd->convert_arg);
   }

   if (cmd->convert_src == TRIG_TIMER) {
    devpriv->ai_convert_count = cmd->chanlist_len;
    s626_set_enable(dev, 5, S626_CLKENAB_ALWAYS);
   }
  }
  if ((irqbit >> (cmd->convert_arg - (16 * group))) == 1 &&
      cmd->convert_src == TRIG_EXT) {

   s626_mc_enable(dev, S626_MC2_ADC_RPS, S626_P_MC2);

   devpriv->ai_convert_count--;
   if (devpriv->ai_convert_count > 0)
    s626_dio_set_irq(dev, cmd->convert_arg);
  }
 }
}
