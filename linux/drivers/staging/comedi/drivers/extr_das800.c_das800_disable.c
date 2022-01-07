
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int spinlock; } ;


 int CONV_CONTROL ;
 int das800_ind_write (struct comedi_device*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void das800_disable(struct comedi_device *dev)
{
 unsigned long irq_flags;

 spin_lock_irqsave(&dev->spinlock, irq_flags);

 das800_ind_write(dev, 0x0, CONV_CONTROL);
 spin_unlock_irqrestore(&dev->spinlock, irq_flags);
}
