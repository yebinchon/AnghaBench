
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; int lock; } ;


 int UART_IR_REG ;
 int bcm_uart_disable (struct uart_port*) ;
 int bcm_uart_flush (struct uart_port*) ;
 int bcm_uart_writel (struct uart_port*,int ,int ) ;
 int free_irq (int ,struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void bcm_uart_shutdown(struct uart_port *port)
{
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 bcm_uart_writel(port, 0, UART_IR_REG);
 spin_unlock_irqrestore(&port->lock, flags);

 bcm_uart_disable(port);
 bcm_uart_flush(port);
 free_irq(port->irq, port);
}
