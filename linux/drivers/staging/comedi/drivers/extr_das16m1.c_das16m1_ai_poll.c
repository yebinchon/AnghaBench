
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int spinlock; scalar_t__ iobase; } ;


 scalar_t__ DAS16M1_CS_REG ;
 int comedi_buf_n_bytes_ready (struct comedi_subdevice*) ;
 int das16m1_handler (struct comedi_device*,unsigned int) ;
 unsigned int inb (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int das16m1_ai_poll(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 unsigned long flags;
 unsigned int status;


 spin_lock_irqsave(&dev->spinlock, flags);
 status = inb(dev->iobase + DAS16M1_CS_REG);
 das16m1_handler(dev, status);
 spin_unlock_irqrestore(&dev->spinlock, flags);

 return comedi_buf_n_bytes_ready(s);
}
