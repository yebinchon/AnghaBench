
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int spinlock; } ;


 int comedi_buf_n_bytes_ready (struct comedi_subdevice*) ;
 int ni_handle_fifo_dregs (struct comedi_device*) ;
 int ni_sync_ai_dma (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ni_ai_poll(struct comedi_device *dev, struct comedi_subdevice *s)
{
 unsigned long flags;
 int count;


 spin_lock_irqsave(&dev->spinlock, flags);

 ni_handle_fifo_dregs(dev);



 count = comedi_buf_n_bytes_ready(s);
 spin_unlock_irqrestore(&dev->spinlock, flags);

 return count;
}
