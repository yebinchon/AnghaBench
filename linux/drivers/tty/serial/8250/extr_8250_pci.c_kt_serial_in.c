
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ iobase; } ;
struct uart_8250_port {unsigned int ier; } ;


 int UART_IER ;
 unsigned int inb (scalar_t__) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static unsigned int kt_serial_in(struct uart_port *p, int offset)
{
 struct uart_8250_port *up = up_to_u8250p(p);
 unsigned int val;
 val = inb(p->iobase + offset);
 if (offset == UART_IER) {
  if (val == 0)
   val = up->ier;
 }
 return val;
}
