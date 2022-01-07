
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmmio_private {int active; int spinlock; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct pcmmio_private* private; } ;
struct comedi_cmd {scalar_t__ start_src; } ;
struct TYPE_2__ {int inttrig; struct comedi_cmd cmd; } ;


 scalar_t__ TRIG_INT ;
 int pcmmio_inttrig_start_intr ;
 int pcmmio_start_intr (struct comedi_device*,struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pcmmio_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct pcmmio_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned long flags;

 spin_lock_irqsave(&devpriv->spinlock, flags);
 devpriv->active = 1;


 if (cmd->start_src == TRIG_INT)
  s->async->inttrig = pcmmio_inttrig_start_intr;
 else
  pcmmio_start_intr(dev, s);

 spin_unlock_irqrestore(&devpriv->spinlock, flags);

 return 0;
}
