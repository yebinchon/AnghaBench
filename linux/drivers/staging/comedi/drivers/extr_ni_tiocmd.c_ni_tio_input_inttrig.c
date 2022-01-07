
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_gpct {int lock; scalar_t__ mite_chan; } ;
struct comedi_subdevice {TYPE_1__* async; struct ni_gpct* private; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {unsigned int start_arg; } ;
struct TYPE_2__ {int * inttrig; struct comedi_cmd cmd; } ;


 int EINVAL ;
 int EIO ;
 int NI_GPCT_ARM_IMMEDIATE ;
 int mite_dma_arm (scalar_t__) ;
 int ni_tio_arm (struct ni_gpct*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ni_tio_input_inttrig(struct comedi_device *dev,
    struct comedi_subdevice *s,
    unsigned int trig_num)
{
 struct ni_gpct *counter = s->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned long flags;
 int ret = 0;

 if (trig_num != cmd->start_arg)
  return -EINVAL;

 spin_lock_irqsave(&counter->lock, flags);
 if (counter->mite_chan)
  mite_dma_arm(counter->mite_chan);
 else
  ret = -EIO;
 spin_unlock_irqrestore(&counter->lock, flags);
 if (ret < 0)
  return ret;
 ret = ni_tio_arm(counter, 1, NI_GPCT_ARM_IMMEDIATE);
 s->async->inttrig = ((void*)0);

 return ret;
}
