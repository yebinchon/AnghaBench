
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das800_private {int do_bits; } ;
struct das800_board {int resolution; } ;
struct comedi_device {int spinlock; scalar_t__ iobase; struct das800_private* private; struct das800_board* board_ptr; } ;


 int CIO_ENHF ;
 int CONTROL1 ;
 int CONTROL1_INTE ;
 int CONV_CONTROL ;
 int CONV_HCEN ;
 scalar_t__ DAS800_GAIN ;
 int das800_ind_write (struct comedi_device*,int,int ) ;
 int outb (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void das800_enable(struct comedi_device *dev)
{
 const struct das800_board *board = dev->board_ptr;
 struct das800_private *devpriv = dev->private;
 unsigned long irq_flags;

 spin_lock_irqsave(&dev->spinlock, irq_flags);

 if (board->resolution == 16)
  outb(CIO_ENHF, dev->iobase + DAS800_GAIN);

 das800_ind_write(dev, CONV_HCEN, CONV_CONTROL);

 das800_ind_write(dev, CONTROL1_INTE | devpriv->do_bits, CONTROL1);
 spin_unlock_irqrestore(&dev->spinlock, irq_flags);
}
