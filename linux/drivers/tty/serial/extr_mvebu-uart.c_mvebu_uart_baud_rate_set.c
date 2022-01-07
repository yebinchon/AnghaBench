
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct uart_port {scalar_t__ membase; int uartclk; } ;
struct mvebu_uart {int clk; } ;


 unsigned int BRDV_BAUD_MASK ;
 unsigned int DIV_ROUND_UP (int ,unsigned int) ;
 scalar_t__ IS_ERR (int ) ;
 unsigned int OSAMP_DEFAULT_DIVISOR ;
 unsigned int OSAMP_DIVISORS_MASK ;
 int PTR_ERR (int ) ;
 scalar_t__ UART_BRDV ;
 scalar_t__ UART_OSAMP ;
 unsigned int readl (scalar_t__) ;
 struct mvebu_uart* to_mvuart (struct uart_port*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int mvebu_uart_baud_rate_set(struct uart_port *port, unsigned int baud)
{
 struct mvebu_uart *mvuart = to_mvuart(port);
 unsigned int d_divisor, m_divisor;
 u32 brdv, osamp;

 if (IS_ERR(mvuart->clk))
  return -PTR_ERR(mvuart->clk);
 m_divisor = OSAMP_DEFAULT_DIVISOR;
 d_divisor = DIV_ROUND_UP(port->uartclk, baud * m_divisor);

 brdv = readl(port->membase + UART_BRDV);
 brdv &= ~BRDV_BAUD_MASK;
 brdv |= d_divisor;
 writel(brdv, port->membase + UART_BRDV);

 osamp = readl(port->membase + UART_OSAMP);
 osamp &= ~OSAMP_DIVISORS_MASK;
 writel(osamp, port->membase + UART_OSAMP);

 return 0;
}
