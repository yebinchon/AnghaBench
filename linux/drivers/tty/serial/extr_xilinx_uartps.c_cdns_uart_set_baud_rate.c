
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {scalar_t__ membase; int uartclk; struct cdns_uart* private_data; } ;
struct cdns_uart {unsigned int baud; } ;


 scalar_t__ CDNS_UART_BAUDDIV ;
 scalar_t__ CDNS_UART_BAUDGEN ;
 scalar_t__ CDNS_UART_MR ;
 int CDNS_UART_MR_CLKSEL ;
 unsigned int cdns_uart_calc_baud_divs (int ,unsigned int,int *,int *,int*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static unsigned int cdns_uart_set_baud_rate(struct uart_port *port,
  unsigned int baud)
{
 unsigned int calc_baud;
 u32 cd = 0, bdiv = 0;
 u32 mreg;
 int div8;
 struct cdns_uart *cdns_uart = port->private_data;

 calc_baud = cdns_uart_calc_baud_divs(port->uartclk, baud, &bdiv, &cd,
   &div8);


 mreg = readl(port->membase + CDNS_UART_MR);
 if (div8)
  mreg |= CDNS_UART_MR_CLKSEL;
 else
  mreg &= ~CDNS_UART_MR_CLKSEL;
 writel(mreg, port->membase + CDNS_UART_MR);
 writel(cd, port->membase + CDNS_UART_BAUDGEN);
 writel(bdiv, port->membase + CDNS_UART_BAUDDIV);
 cdns_uart->baud = baud;

 return calc_baud;
}
