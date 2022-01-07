
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmuio_private {struct pcmuio_asic* asics; } ;
struct pcmuio_asic {unsigned int enabled_mask; int spinlock; int active; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct pcmuio_private* private; } ;
struct comedi_cmd {unsigned int chanlist_len; scalar_t__ stop_src; scalar_t__ stop_arg; int * chanlist; } ;
struct TYPE_2__ {scalar_t__ scans_done; int events; struct comedi_cmd cmd; } ;


 int COMEDI_CB_EOA ;
 unsigned int CR_CHAN (int ) ;
 scalar_t__ TRIG_COUNT ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned int*,int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int pcmuio_subdevice_to_asic (struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pcmuio_handle_intr_subdev(struct comedi_device *dev,
          struct comedi_subdevice *s,
          unsigned int triggered)
{
 struct pcmuio_private *devpriv = dev->private;
 int asic = pcmuio_subdevice_to_asic(s);
 struct pcmuio_asic *chip = &devpriv->asics[asic];
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int val = 0;
 unsigned long flags;
 unsigned int i;

 spin_lock_irqsave(&chip->spinlock, flags);

 if (!chip->active)
  goto done;

 if (!(triggered & chip->enabled_mask))
  goto done;

 for (i = 0; i < cmd->chanlist_len; i++) {
  unsigned int chan = CR_CHAN(cmd->chanlist[i]);

  if (triggered & (1 << chan))
   val |= (1 << i);
 }

 comedi_buf_write_samples(s, &val, 1);

 if (cmd->stop_src == TRIG_COUNT &&
     s->async->scans_done >= cmd->stop_arg)
  s->async->events |= COMEDI_CB_EOA;

done:
 spin_unlock_irqrestore(&chip->spinlock, flags);

 comedi_handle_events(dev, s);
}
