
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int spinlock; } ;


 int comedi_buf_n_bytes_ready (struct comedi_subdevice*) ;
 int das1800_ai_handler (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int das1800_ai_poll(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 unsigned long flags;





 spin_lock_irqsave(&dev->spinlock, flags);

 das1800_ai_handler(dev);

 spin_unlock_irqrestore(&dev->spinlock, flags);

 return comedi_buf_n_bytes_ready(s);
}
