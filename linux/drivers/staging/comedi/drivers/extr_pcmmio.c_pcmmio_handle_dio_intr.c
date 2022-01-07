
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmmio_private {unsigned int enabled_mask; int spinlock; int active; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct pcmmio_private* private; } ;
struct comedi_cmd {int chanlist_len; scalar_t__ stop_src; scalar_t__ stop_arg; int * chanlist; } ;
struct TYPE_2__ {scalar_t__ scans_done; int events; struct comedi_cmd cmd; } ;


 int COMEDI_CB_EOA ;
 unsigned int CR_CHAN (int ) ;
 scalar_t__ TRIG_COUNT ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned int*,int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pcmmio_handle_dio_intr(struct comedi_device *dev,
       struct comedi_subdevice *s,
       unsigned int triggered)
{
 struct pcmmio_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int val = 0;
 unsigned long flags;
 int i;

 spin_lock_irqsave(&devpriv->spinlock, flags);

 if (!devpriv->active)
  goto done;

 if (!(triggered & devpriv->enabled_mask))
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
 spin_unlock_irqrestore(&devpriv->spinlock, flags);

 comedi_handle_events(dev, s);
}
