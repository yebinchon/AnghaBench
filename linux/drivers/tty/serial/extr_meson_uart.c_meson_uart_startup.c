
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int fifosize; int name; int irq; scalar_t__ membase; } ;


 int AML_UART_CLEAR_ERR ;
 scalar_t__ AML_UART_CONTROL ;
 scalar_t__ AML_UART_MISC ;
 int AML_UART_RECV_IRQ (int) ;
 int AML_UART_RX_EN ;
 int AML_UART_RX_INT_EN ;
 int AML_UART_TX_EN ;
 int AML_UART_TX_INT_EN ;
 int AML_UART_XMIT_IRQ (int) ;
 int meson_uart_interrupt ;
 int readl (scalar_t__) ;
 int request_irq (int ,int ,int ,int ,struct uart_port*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int meson_uart_startup(struct uart_port *port)
{
 u32 val;
 int ret = 0;

 val = readl(port->membase + AML_UART_CONTROL);
 val |= AML_UART_CLEAR_ERR;
 writel(val, port->membase + AML_UART_CONTROL);
 val &= ~AML_UART_CLEAR_ERR;
 writel(val, port->membase + AML_UART_CONTROL);

 val |= (AML_UART_RX_EN | AML_UART_TX_EN);
 writel(val, port->membase + AML_UART_CONTROL);

 val |= (AML_UART_RX_INT_EN | AML_UART_TX_INT_EN);
 writel(val, port->membase + AML_UART_CONTROL);

 val = (AML_UART_RECV_IRQ(1) | AML_UART_XMIT_IRQ(port->fifosize / 2));
 writel(val, port->membase + AML_UART_MISC);

 ret = request_irq(port->irq, meson_uart_interrupt, 0,
     port->name, port);

 return ret;
}
