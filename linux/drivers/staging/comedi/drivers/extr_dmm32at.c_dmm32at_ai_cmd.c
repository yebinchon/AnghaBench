
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct comedi_cmd {scalar_t__ stop_src; int stop_arg; int scan_begin_arg; int chanlist_len; int * chanlist; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 int DMM32AT_AI_READBACK_REG ;
 scalar_t__ DMM32AT_AI_START_CONV_REG ;
 int DMM32AT_CTRL_INTRST ;
 scalar_t__ DMM32AT_CTRL_REG ;
 int DMM32AT_INTCLK_ADINT ;
 scalar_t__ DMM32AT_INTCLK_REG ;
 scalar_t__ TRIG_NONE ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,int *,int ,int ) ;
 int dmm32at_ai_set_chanspec (struct comedi_device*,struct comedi_subdevice*,int ,int ) ;
 int dmm32at_ai_status ;
 int dmm32at_setaitimer (struct comedi_device*,int ) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int dmm32at_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct comedi_cmd *cmd = &s->async->cmd;
 int ret;

 dmm32at_ai_set_chanspec(dev, s, cmd->chanlist[0], cmd->chanlist_len);


 outb(DMM32AT_CTRL_INTRST, dev->iobase + DMM32AT_CTRL_REG);





 ret = comedi_timeout(dev, s, ((void*)0), dmm32at_ai_status,
        DMM32AT_AI_READBACK_REG);
 if (ret)
  return ret;

 if (cmd->stop_src == TRIG_NONE || cmd->stop_arg > 1) {

  dmm32at_setaitimer(dev, cmd->scan_begin_arg);
 } else {

  outb(DMM32AT_INTCLK_ADINT, dev->iobase + DMM32AT_INTCLK_REG);
  outb(0xff, dev->iobase + DMM32AT_AI_START_CONV_REG);
 }

 return 0;
}
