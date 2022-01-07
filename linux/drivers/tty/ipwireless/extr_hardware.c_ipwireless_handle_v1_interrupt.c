
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_hardware {int tx_ready; int tasklet; scalar_t__ base_port; int lock; int rx_ready; } ;
typedef int irqreturn_t ;


 scalar_t__ IOIR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned short IR_RXINTR ;
 unsigned short IR_TXINTR ;
 unsigned short inw (scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t ipwireless_handle_v1_interrupt(int irq,
        struct ipw_hardware *hw)
{
 unsigned short irqn;

 irqn = inw(hw->base_port + IOIR);


 if (irqn == 0xFFFF)
  return IRQ_NONE;
 else if (irqn != 0) {
  unsigned short ack = 0;
  unsigned long flags;


  if (irqn & IR_TXINTR) {
   ack |= IR_TXINTR;
   spin_lock_irqsave(&hw->lock, flags);
   hw->tx_ready = 1;
   spin_unlock_irqrestore(&hw->lock, flags);
  }

  if (irqn & IR_RXINTR) {
   ack |= IR_RXINTR;
   spin_lock_irqsave(&hw->lock, flags);
   hw->rx_ready++;
   spin_unlock_irqrestore(&hw->lock, flags);
  }
  if (ack != 0) {
   outw(ack, hw->base_port + IOIR);
   tasklet_schedule(&hw->tasklet);
  }
  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}
