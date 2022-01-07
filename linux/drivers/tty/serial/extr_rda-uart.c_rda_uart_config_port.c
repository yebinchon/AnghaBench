
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; int type; } ;


 int PORT_RDA ;
 int RDA_UART_IRQ_MASK ;
 int RDA_UART_STATUS ;
 int UART_CONFIG_TYPE ;
 int rda_uart_request_port (struct uart_port*) ;
 int rda_uart_write (struct uart_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rda_uart_config_port(struct uart_port *port, int flags)
{
 unsigned long irq_flags;

 if (flags & UART_CONFIG_TYPE) {
  port->type = PORT_RDA;
  rda_uart_request_port(port);
 }

 spin_lock_irqsave(&port->lock, irq_flags);


 rda_uart_write(port, 0, RDA_UART_IRQ_MASK);


 rda_uart_write(port, 0, RDA_UART_STATUS);

 spin_unlock_irqrestore(&port->lock, irq_flags);
}
