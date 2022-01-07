
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int irq; int lock; scalar_t__ membase; } ;


 scalar_t__ CDNS_UART_CR ;
 int CDNS_UART_CR_RX_DIS ;
 int CDNS_UART_CR_TX_DIS ;
 scalar_t__ CDNS_UART_IDR ;
 scalar_t__ CDNS_UART_IMR ;
 scalar_t__ CDNS_UART_ISR ;
 int free_irq (int ,struct uart_port*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cdns_uart_shutdown(struct uart_port *port)
{
 int status;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);


 status = readl(port->membase + CDNS_UART_IMR);
 writel(status, port->membase + CDNS_UART_IDR);
 writel(0xffffffff, port->membase + CDNS_UART_ISR);


 writel(CDNS_UART_CR_TX_DIS | CDNS_UART_CR_RX_DIS,
   port->membase + CDNS_UART_CR);

 spin_unlock_irqrestore(&port->lock, flags);

 free_irq(port->irq, port);
}
