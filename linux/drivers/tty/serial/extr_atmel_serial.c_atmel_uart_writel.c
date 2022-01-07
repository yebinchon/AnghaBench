
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct uart_port {scalar_t__ membase; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void atmel_uart_writel(struct uart_port *port, u32 reg, u32 value)
{
 __raw_writel(value, port->membase + reg);
}
