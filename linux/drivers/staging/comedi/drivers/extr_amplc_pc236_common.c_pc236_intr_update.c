
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pc236_private {int enable_irq; } ;
struct pc236_board {int (* intr_update_cb ) (struct comedi_device*,int) ;} ;
struct comedi_device {int spinlock; struct pc236_private* private; struct pc236_board* board_ptr; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct comedi_device*,int) ;

__attribute__((used)) static void pc236_intr_update(struct comedi_device *dev, bool enable)
{
 const struct pc236_board *board = dev->board_ptr;
 struct pc236_private *devpriv = dev->private;
 unsigned long flags;

 spin_lock_irqsave(&dev->spinlock, flags);
 devpriv->enable_irq = enable;
 if (board->intr_update_cb)
  board->intr_update_cb(dev, enable);
 spin_unlock_irqrestore(&dev->spinlock, flags);
}
