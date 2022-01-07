
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct das16_private_struct {int timer; scalar_t__ timer_running; struct comedi_device* dev; } ;
struct comedi_device {int spinlock; } ;


 int das16_interrupt (struct comedi_device*) ;
 struct das16_private_struct* devpriv ;
 struct das16_private_struct* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;
 scalar_t__ timer_period () ;

__attribute__((used)) static void das16_timer_interrupt(struct timer_list *t)
{
 struct das16_private_struct *devpriv = from_timer(devpriv, t, timer);
 struct comedi_device *dev = devpriv->dev;
 unsigned long flags;

 das16_interrupt(dev);

 spin_lock_irqsave(&dev->spinlock, flags);
 if (devpriv->timer_running)
  mod_timer(&devpriv->timer, jiffies + timer_period());
 spin_unlock_irqrestore(&dev->spinlock, flags);
}
