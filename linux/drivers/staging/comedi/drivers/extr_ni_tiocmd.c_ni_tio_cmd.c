
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ni_gpct {int lock; TYPE_2__* counter_dev; int mite_chan; } ;
struct comedi_subdevice {struct comedi_async* async; struct ni_gpct* private; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int flags; } ;
struct comedi_async {struct comedi_cmd cmd; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int class_dev; } ;


 int CMDF_WRITE ;
 int EIO ;
 int dev_err (int ,char*) ;
 int ni_tio_cmd_setup (struct comedi_subdevice*) ;
 int ni_tio_input_cmd (struct comedi_subdevice*) ;
 int ni_tio_output_cmd (struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ni_tio_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct ni_gpct *counter = s->private;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 int retval = 0;
 unsigned long flags;

 spin_lock_irqsave(&counter->lock, flags);
 if (!counter->mite_chan) {
  dev_err(counter->counter_dev->dev->class_dev,
   "commands only supported with DMA.  ");
  dev_err(counter->counter_dev->dev->class_dev,
   "Interrupt-driven commands not yet implemented.\n");
  retval = -EIO;
 } else {
  retval = ni_tio_cmd_setup(s);
  if (retval == 0) {
   if (cmd->flags & CMDF_WRITE)
    retval = ni_tio_output_cmd(s);
   else
    retval = ni_tio_input_cmd(s);
  }
 }
 spin_unlock_irqrestore(&counter->lock, flags);
 return retval;
}
