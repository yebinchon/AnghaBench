
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 unsigned int __raw_readl (scalar_t__) ;

__attribute__((used)) static inline unsigned int bcm_uart_readl(struct uart_port *port,
      unsigned int offset)
{
 return __raw_readl(port->membase + offset);
}
