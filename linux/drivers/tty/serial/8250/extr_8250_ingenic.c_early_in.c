
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_port {scalar_t__ membase; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static uint8_t early_in(struct uart_port *port, int offset)
{
 return readl(port->membase + (offset << 2));
}
