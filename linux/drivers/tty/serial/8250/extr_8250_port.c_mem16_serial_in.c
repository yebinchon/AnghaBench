
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; scalar_t__ membase; } ;


 unsigned int readw (scalar_t__) ;

__attribute__((used)) static unsigned int mem16_serial_in(struct uart_port *p, int offset)
{
 offset = offset << p->regshift;
 return readw(p->membase + offset);
}
