
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int uartclk; scalar_t__ membase; } ;


 int AML_UART_BAUD_USE ;
 int AML_UART_BAUD_XTAL ;
 scalar_t__ AML_UART_REG5 ;
 int cpu_relax () ;
 int meson_uart_tx_empty (struct uart_port*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void meson_uart_change_speed(struct uart_port *port, unsigned long baud)
{
 u32 val;

 while (!meson_uart_tx_empty(port))
  cpu_relax();

 if (port->uartclk == 24000000) {
  val = ((port->uartclk / 3) / baud) - 1;
  val |= AML_UART_BAUD_XTAL;
 } else {
  val = ((port->uartclk * 10 / (baud * 4) + 5) / 10) - 1;
 }
 val |= AML_UART_BAUD_USE;
 writel(val, port->membase + AML_UART_REG5);
}
