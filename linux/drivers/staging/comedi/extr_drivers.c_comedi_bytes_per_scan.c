
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_cmd {int dummy; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 unsigned int comedi_bytes_per_scan_cmd (struct comedi_subdevice*,struct comedi_cmd*) ;

unsigned int comedi_bytes_per_scan(struct comedi_subdevice *s)
{
 struct comedi_cmd *cmd = &s->async->cmd;

 return comedi_bytes_per_scan_cmd(s, cmd);
}
