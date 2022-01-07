
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcidas64_private {int intr_enable_bits; scalar_t__ main_iobase; } ;
struct pcidas64_board {scalar_t__ layout; } ;
struct comedi_device {int spinlock; struct pcidas64_private* private; struct pcidas64_board* board_ptr; } ;
struct comedi_cmd {int flags; } ;


 int ADC_INTR_EOSCAN_BITS ;
 int CMDF_WAKE_EOS ;
 int EN_ADC_ACTIVE_INTR_BIT ;
 int EN_ADC_DONE_INTR_BIT ;
 int EN_ADC_INTR_SRC_BIT ;
 int EN_ADC_OVERRUN_BIT ;
 int EN_ADC_STOP_INTR_BIT ;
 scalar_t__ INTR_ENABLE_REG ;
 scalar_t__ LAYOUT_4020 ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void enable_ai_interrupts(struct comedi_device *dev,
     const struct comedi_cmd *cmd)
{
 const struct pcidas64_board *board = dev->board_ptr;
 struct pcidas64_private *devpriv = dev->private;
 u32 bits;
 unsigned long flags;

 bits = EN_ADC_OVERRUN_BIT | EN_ADC_DONE_INTR_BIT |
        EN_ADC_ACTIVE_INTR_BIT | EN_ADC_STOP_INTR_BIT;




 if (cmd->flags & CMDF_WAKE_EOS) {

  if (board->layout != LAYOUT_4020)
   bits |= ADC_INTR_EOSCAN_BITS | EN_ADC_INTR_SRC_BIT;
 }
 spin_lock_irqsave(&dev->spinlock, flags);
 devpriv->intr_enable_bits |= bits;
 writew(devpriv->intr_enable_bits,
        devpriv->main_iobase + INTR_ENABLE_REG);
 spin_unlock_irqrestore(&dev->spinlock, flags);
}
