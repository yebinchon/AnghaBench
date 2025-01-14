
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int brk; } ;
struct TYPE_4__ {int lock; int read_status_mask; TYPE_1__ icount; } ;
struct sa1100_port {TYPE_2__ port; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SA1100_ISR_PASS_LIMIT ;
 unsigned int SM_TO_UTSR0 (int ) ;
 unsigned int UART_GET_UTSR0 (struct sa1100_port*) ;
 int UART_PUT_UTSR0 (struct sa1100_port*,unsigned int) ;
 unsigned int UTSR0_RBB ;
 unsigned int UTSR0_REB ;
 unsigned int UTSR0_RFS ;
 unsigned int UTSR0_RID ;
 unsigned int UTSR0_TFS ;
 int sa1100_rx_chars (struct sa1100_port*) ;
 int sa1100_tx_chars (struct sa1100_port*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int uart_handle_break (TYPE_2__*) ;

__attribute__((used)) static irqreturn_t sa1100_int(int irq, void *dev_id)
{
 struct sa1100_port *sport = dev_id;
 unsigned int status, pass_counter = 0;

 spin_lock(&sport->port.lock);
 status = UART_GET_UTSR0(sport);
 status &= SM_TO_UTSR0(sport->port.read_status_mask) | ~UTSR0_TFS;
 do {
  if (status & (UTSR0_RFS | UTSR0_RID)) {

   if (status & UTSR0_RID)
    UART_PUT_UTSR0(sport, UTSR0_RID);
   sa1100_rx_chars(sport);
  }


  if (status & (UTSR0_RBB | UTSR0_REB))
   UART_PUT_UTSR0(sport, status & (UTSR0_RBB | UTSR0_REB));

  if (status & UTSR0_RBB)
   sport->port.icount.brk++;

  if (status & UTSR0_REB)
   uart_handle_break(&sport->port);

  if (status & UTSR0_TFS)
   sa1100_tx_chars(sport);
  if (pass_counter++ > SA1100_ISR_PASS_LIMIT)
   break;
  status = UART_GET_UTSR0(sport);
  status &= SM_TO_UTSR0(sport->port.read_status_mask) |
     ~UTSR0_TFS;
 } while (status & (UTSR0_TFS | UTSR0_RFS | UTSR0_RID));
 spin_unlock(&sport->port.lock);

 return IRQ_HANDLED;
}
