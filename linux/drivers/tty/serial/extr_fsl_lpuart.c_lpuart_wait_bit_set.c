
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_port {scalar_t__ membase; } ;


 int cpu_relax () ;
 int readb (scalar_t__) ;

__attribute__((used)) static void lpuart_wait_bit_set(struct uart_port *port, unsigned int offset,
    u8 bit)
{
 while (!(readb(port->membase + offset) & bit))
  cpu_relax();
}
