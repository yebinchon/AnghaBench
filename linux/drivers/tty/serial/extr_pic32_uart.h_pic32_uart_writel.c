
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uart_port {scalar_t__ membase; } ;
struct pic32_sport {int dummy; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;
 struct uart_port* pic32_get_port (struct pic32_sport*) ;

__attribute__((used)) static inline void pic32_uart_writel(struct pic32_sport *sport,
     u32 reg, u32 val)
{
 struct uart_port *port = pic32_get_port(sport);

 __raw_writel(val, port->membase + reg);
}
