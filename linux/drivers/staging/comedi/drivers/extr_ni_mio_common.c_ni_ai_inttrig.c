
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_private {int ai_cmd2; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct ni_private* private; } ;
struct comedi_cmd {unsigned int start_arg; } ;
struct TYPE_2__ {int * inttrig; struct comedi_cmd cmd; } ;


 int EINVAL ;
 int NISTC_AI_CMD2_REG ;
 int NISTC_AI_CMD2_START1_PULSE ;
 int ni_stc_writew (struct comedi_device*,int,int ) ;

__attribute__((used)) static int ni_ai_inttrig(struct comedi_device *dev,
    struct comedi_subdevice *s,
    unsigned int trig_num)
{
 struct ni_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;

 if (trig_num != cmd->start_arg)
  return -EINVAL;

 ni_stc_writew(dev, NISTC_AI_CMD2_START1_PULSE | devpriv->ai_cmd2,
        NISTC_AI_CMD2_REG);
 s->async->inttrig = ((void*)0);

 return 1;
}
