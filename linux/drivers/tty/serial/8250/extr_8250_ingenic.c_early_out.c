
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_port {scalar_t__ membase; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void early_out(struct uart_port *port, int offset, uint8_t value)
{
 writel(value, port->membase + (offset << 2));
}
