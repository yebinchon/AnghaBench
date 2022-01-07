
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct s3c24xx_uart_port {struct uart_port port; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int s3c24xx_serial_rx_drain_fifo (struct s3c24xx_uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t s3c24xx_serial_rx_chars_pio(void *dev_id)
{
 struct s3c24xx_uart_port *ourport = dev_id;
 struct uart_port *port = &ourport->port;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 s3c24xx_serial_rx_drain_fifo(ourport);
 spin_unlock_irqrestore(&port->lock, flags);

 return IRQ_HANDLED;
}
