
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dio200_subdev_intr {int active; int spinlock; } ;
struct comedi_subdevice {TYPE_1__* async; struct dio200_subdev_intr* private; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {scalar_t__ start_src; } ;
struct TYPE_2__ {int inttrig; struct comedi_cmd cmd; } ;


 scalar_t__ TRIG_INT ;
 int dio200_inttrig_start_intr ;
 int dio200_start_intr (struct comedi_device*,struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dio200_subdev_intr_cmd(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 struct comedi_cmd *cmd = &s->async->cmd;
 struct dio200_subdev_intr *subpriv = s->private;
 unsigned long flags;

 spin_lock_irqsave(&subpriv->spinlock, flags);

 subpriv->active = 1;

 if (cmd->start_src == TRIG_INT)
  s->async->inttrig = dio200_inttrig_start_intr;
 else
  dio200_start_intr(dev, s);

 spin_unlock_irqrestore(&subpriv->spinlock, flags);

 return 0;
}
