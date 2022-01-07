
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcidas64_private {scalar_t__ main_iobase; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct pcidas64_private* private; } ;
struct comedi_cmd {unsigned int start_arg; scalar_t__ start_src; } ;
struct TYPE_2__ {int * inttrig; struct comedi_cmd cmd; } ;


 scalar_t__ DAC_START_REG ;
 int EINVAL ;
 int EPIPE ;
 scalar_t__ TRIG_INT ;
 int prep_ao_dma (struct comedi_device*,struct comedi_cmd*) ;
 int set_dac_control0_reg (struct comedi_device*,struct comedi_cmd*) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int ao_inttrig(struct comedi_device *dev, struct comedi_subdevice *s,
        unsigned int trig_num)
{
 struct pcidas64_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 int retval;

 if (trig_num != cmd->start_arg)
  return -EINVAL;

 retval = prep_ao_dma(dev, cmd);
 if (retval < 0)
  return -EPIPE;

 set_dac_control0_reg(dev, cmd);

 if (cmd->start_src == TRIG_INT)
  writew(0, devpriv->main_iobase + DAC_START_REG);

 s->async->inttrig = ((void*)0);

 return 0;
}
