
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; scalar_t__ membase; } ;


 unsigned int dw8250_modify_msr (struct uart_port*,int,unsigned int) ;
 unsigned int readb (scalar_t__) ;

__attribute__((used)) static unsigned int dw8250_serial_in(struct uart_port *p, int offset)
{
 unsigned int value = readb(p->membase + (offset << p->regshift));

 return dw8250_modify_msr(p, offset, value);
}
