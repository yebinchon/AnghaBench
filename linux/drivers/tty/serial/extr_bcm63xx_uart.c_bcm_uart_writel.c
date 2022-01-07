
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 int __raw_writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void bcm_uart_writel(struct uart_port *port,
      unsigned int value, unsigned int offset)
{
 __raw_writel(value, port->membase + offset);
}
