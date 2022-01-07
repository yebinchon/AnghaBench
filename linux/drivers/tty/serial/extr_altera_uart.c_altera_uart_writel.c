
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int regshift; scalar_t__ membase; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void altera_uart_writel(struct uart_port *port, u32 dat, int reg)
{
 writel(dat, port->membase + (reg << port->regshift));
}
