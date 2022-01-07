
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 unsigned int UBRLCR_BREAK ;
 scalar_t__ UBRLCR_OFFSET ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void uart_clps711x_break_ctl(struct uart_port *port, int break_state)
{
 unsigned int ubrlcr;

 ubrlcr = readl(port->membase + UBRLCR_OFFSET);
 if (break_state)
  ubrlcr |= UBRLCR_BREAK;
 else
  ubrlcr &= ~UBRLCR_BREAK;
 writel(ubrlcr, port->membase + UBRLCR_OFFSET);
}
