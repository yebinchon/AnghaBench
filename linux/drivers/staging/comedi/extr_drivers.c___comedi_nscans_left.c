
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct comedi_async {scalar_t__ scans_done; struct comedi_cmd cmd; } ;


 scalar_t__ TRIG_COUNT ;

__attribute__((used)) static unsigned int __comedi_nscans_left(struct comedi_subdevice *s,
      unsigned int nscans)
{
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;

 if (cmd->stop_src == TRIG_COUNT) {
  unsigned int scans_left = 0;

  if (async->scans_done < cmd->stop_arg)
   scans_left = cmd->stop_arg - async->scans_done;

  if (nscans > scans_left)
   nscans = scans_left;
 }
 return nscans;
}
