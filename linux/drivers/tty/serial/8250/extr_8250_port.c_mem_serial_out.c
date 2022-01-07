
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int regshift; scalar_t__ membase; } ;


 int writeb (int,scalar_t__) ;

__attribute__((used)) static void mem_serial_out(struct uart_port *p, int offset, int value)
{
 offset = offset << p->regshift;
 writeb(value, p->membase + offset);
}
