
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; scalar_t__ membase; } ;
struct mvebu_uart {int * irq; } ;


 scalar_t__ UART_INTR (struct uart_port*) ;
 size_t UART_IRQ_SUM ;
 size_t UART_RX_IRQ ;
 size_t UART_TX_IRQ ;
 int devm_free_irq (int ,int ,struct uart_port*) ;
 struct mvebu_uart* to_mvuart (struct uart_port*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mvebu_uart_shutdown(struct uart_port *port)
{
 struct mvebu_uart *mvuart = to_mvuart(port);

 writel(0, port->membase + UART_INTR(port));

 if (!mvuart->irq[UART_TX_IRQ]) {
  devm_free_irq(port->dev, mvuart->irq[UART_IRQ_SUM], port);
 } else {
  devm_free_irq(port->dev, mvuart->irq[UART_RX_IRQ], port);
  devm_free_irq(port->dev, mvuart->irq[UART_TX_IRQ], port);
 }
}
