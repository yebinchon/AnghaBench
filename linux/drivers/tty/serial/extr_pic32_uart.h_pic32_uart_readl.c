
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uart_port {scalar_t__ membase; } ;
struct pic32_sport {int dummy; } ;


 scalar_t__ __raw_readl (scalar_t__) ;
 struct uart_port* pic32_get_port (struct pic32_sport*) ;

__attribute__((used)) static inline u32 pic32_uart_readl(struct pic32_sport *sport, u32 reg)
{
 struct uart_port *port = pic32_get_port(sport);

 return __raw_readl(port->membase + reg);
}
