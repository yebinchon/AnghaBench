
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct TYPE_2__ {scalar_t__ scans_done; int events; struct comedi_cmd cmd; } ;


 int COMEDI_CB_EOA ;
 scalar_t__ TRIG_COUNT ;

__attribute__((used)) static bool pcl816_ai_next_chan(struct comedi_device *dev,
    struct comedi_subdevice *s)
{
 struct comedi_cmd *cmd = &s->async->cmd;

 if (cmd->stop_src == TRIG_COUNT &&
     s->async->scans_done >= cmd->stop_arg) {
  s->async->events |= COMEDI_CB_EOA;
  return 0;
 }

 return 1;
}
