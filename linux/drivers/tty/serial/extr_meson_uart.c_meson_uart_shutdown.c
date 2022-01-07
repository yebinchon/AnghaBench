
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int lock; scalar_t__ membase; int irq; } ;


 scalar_t__ AML_UART_CONTROL ;
 int AML_UART_RX_EN ;
 int AML_UART_RX_INT_EN ;
 int AML_UART_TX_INT_EN ;
 int free_irq (int ,struct uart_port*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void meson_uart_shutdown(struct uart_port *port)
{
 unsigned long flags;
 u32 val;

 free_irq(port->irq, port);

 spin_lock_irqsave(&port->lock, flags);

 val = readl(port->membase + AML_UART_CONTROL);
 val &= ~AML_UART_RX_EN;
 val &= ~(AML_UART_RX_INT_EN | AML_UART_TX_INT_EN);
 writel(val, port->membase + AML_UART_CONTROL);

 spin_unlock_irqrestore(&port->lock, flags);
}
