
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {unsigned int start_arg; } ;
struct TYPE_2__ {int * inttrig; struct comedi_cmd cmd; } ;


 int EINVAL ;
 int S626_MC1_ERPS1 ;
 int S626_P_MC1 ;
 int s626_mc_enable (struct comedi_device*,int ,int ) ;

__attribute__((used)) static int s626_ai_inttrig(struct comedi_device *dev,
      struct comedi_subdevice *s,
      unsigned int trig_num)
{
 struct comedi_cmd *cmd = &s->async->cmd;

 if (trig_num != cmd->start_arg)
  return -EINVAL;


 s626_mc_enable(dev, S626_MC1_ERPS1, S626_P_MC1);

 s->async->inttrig = ((void*)0);

 return 1;
}
