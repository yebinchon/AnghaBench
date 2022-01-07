
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dt2814_private {int ntrig; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; struct dt2814_private* private; } ;
struct comedi_cmd {int stop_arg; int * chanlist; int flags; int scan_begin_arg; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 int CR_CHAN (int ) ;
 scalar_t__ DT2814_CSR ;
 int DT2814_ENB ;
 int dt2814_ns_to_timer (int *,int ) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int dt2814_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct dt2814_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 int chan;
 int trigvar;

 trigvar = dt2814_ns_to_timer(&cmd->scan_begin_arg, cmd->flags);

 chan = CR_CHAN(cmd->chanlist[0]);

 devpriv->ntrig = cmd->stop_arg;
 outb(chan | DT2814_ENB | (trigvar << 5), dev->iobase + DT2814_CSR);

 return 0;
}
