
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_private {scalar_t__ ai_cmd_running; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int spinlock; struct pcidas64_private* private; } ;


 int abort_dma (struct comedi_device*,int) ;
 int disable_ai_pacing (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ai_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct pcidas64_private *devpriv = dev->private;
 unsigned long flags;

 spin_lock_irqsave(&dev->spinlock, flags);
 if (devpriv->ai_cmd_running == 0) {
  spin_unlock_irqrestore(&dev->spinlock, flags);
  return 0;
 }
 devpriv->ai_cmd_running = 0;
 spin_unlock_irqrestore(&dev->spinlock, flags);

 disable_ai_pacing(dev);

 abort_dma(dev, 1);

 return 0;
}
