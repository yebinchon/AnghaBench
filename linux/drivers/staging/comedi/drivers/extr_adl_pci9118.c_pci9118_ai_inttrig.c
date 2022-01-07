
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
 int pci9118_ai_cmd_start (struct comedi_device*) ;

__attribute__((used)) static int pci9118_ai_inttrig(struct comedi_device *dev,
         struct comedi_subdevice *s,
         unsigned int trig_num)
{
 struct comedi_cmd *cmd = &s->async->cmd;

 if (trig_num != cmd->start_arg)
  return -EINVAL;

 s->async->inttrig = ((void*)0);
 pci9118_ai_cmd_start(dev);

 return 1;
}
