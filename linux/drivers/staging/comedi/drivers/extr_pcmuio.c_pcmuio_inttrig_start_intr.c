
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmuio_private {struct pcmuio_asic* asics; } ;
struct pcmuio_asic {int spinlock; scalar_t__ active; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct pcmuio_private* private; } ;
struct comedi_cmd {unsigned int start_arg; } ;
struct TYPE_2__ {int * inttrig; struct comedi_cmd cmd; } ;


 int EINVAL ;
 int pcmuio_start_intr (struct comedi_device*,struct comedi_subdevice*) ;
 int pcmuio_subdevice_to_asic (struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pcmuio_inttrig_start_intr(struct comedi_device *dev,
         struct comedi_subdevice *s,
         unsigned int trig_num)
{
 struct pcmuio_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 int asic = pcmuio_subdevice_to_asic(s);
 struct pcmuio_asic *chip = &devpriv->asics[asic];
 unsigned long flags;

 if (trig_num != cmd->start_arg)
  return -EINVAL;

 spin_lock_irqsave(&chip->spinlock, flags);
 s->async->inttrig = ((void*)0);
 if (chip->active)
  pcmuio_start_intr(dev, s);

 spin_unlock_irqrestore(&chip->spinlock, flags);

 return 1;
}
