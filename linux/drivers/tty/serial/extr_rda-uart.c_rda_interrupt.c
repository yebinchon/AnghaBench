
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RDA_UART_IRQ_CAUSE ;
 int RDA_UART_IRQ_MASK ;
 int RDA_UART_RX_DATA_AVAILABLE ;
 int RDA_UART_RX_TIMEOUT ;
 int RDA_UART_TX_DATA_NEEDED ;
 int rda_uart_read (struct uart_port*,int ) ;
 int rda_uart_receive_chars (struct uart_port*) ;
 int rda_uart_send_chars (struct uart_port*) ;
 int rda_uart_write (struct uart_port*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t rda_interrupt(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 unsigned long flags;
 u32 val, irq_mask;

 spin_lock_irqsave(&port->lock, flags);


 val = rda_uart_read(port, RDA_UART_IRQ_CAUSE);
 rda_uart_write(port, val, RDA_UART_IRQ_CAUSE);

 if (val & (RDA_UART_RX_DATA_AVAILABLE | RDA_UART_RX_TIMEOUT))
  rda_uart_receive_chars(port);

 if (val & (RDA_UART_TX_DATA_NEEDED)) {
  irq_mask = rda_uart_read(port, RDA_UART_IRQ_MASK);
  irq_mask &= ~RDA_UART_TX_DATA_NEEDED;
  rda_uart_write(port, irq_mask, RDA_UART_IRQ_MASK);

  rda_uart_send_chars(port);
 }

 spin_unlock_irqrestore(&port->lock, flags);

 return IRQ_HANDLED;
}
