
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct goldfish_pipe_dev {int irq_tasklet; int lock; TYPE_2__* buffers; scalar_t__ base; int * magic; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {TYPE_1__* signalled_pipe_buffers; } ;
struct TYPE_3__ {int flags; int id; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ MAX_SIGNALLED_PIPES ;
 scalar_t__ PIPE_REG_GET_SIGNALLED ;
 int goldfish_pipe_device_deinit ;
 scalar_t__ readl (scalar_t__) ;
 int signalled_pipes_add_locked (struct goldfish_pipe_dev*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t goldfish_pipe_interrupt(int irq, void *dev_id)
{
 u32 count;
 u32 i;
 unsigned long flags;
 struct goldfish_pipe_dev *dev = dev_id;

 if (dev->magic != &goldfish_pipe_device_deinit)
  return IRQ_NONE;


 spin_lock_irqsave(&dev->lock, flags);

 count = readl(dev->base + PIPE_REG_GET_SIGNALLED);
 if (count == 0) {
  spin_unlock_irqrestore(&dev->lock, flags);
  return IRQ_NONE;
 }
 if (count > MAX_SIGNALLED_PIPES)
  count = MAX_SIGNALLED_PIPES;

 for (i = 0; i < count; ++i)
  signalled_pipes_add_locked(dev,
   dev->buffers->signalled_pipe_buffers[i].id,
   dev->buffers->signalled_pipe_buffers[i].flags);

 spin_unlock_irqrestore(&dev->lock, flags);

 tasklet_schedule(&dev->irq_tasklet);
 return IRQ_HANDLED;
}
