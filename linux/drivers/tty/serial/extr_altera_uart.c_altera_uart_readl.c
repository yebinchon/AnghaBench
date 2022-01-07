
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int regshift; scalar_t__ membase; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 altera_uart_readl(struct uart_port *port, int reg)
{
 return readl(port->membase + (reg << port->regshift));
}
