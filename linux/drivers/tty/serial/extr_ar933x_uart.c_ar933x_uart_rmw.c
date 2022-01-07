
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar933x_uart_port {int dummy; } ;


 unsigned int ar933x_uart_read (struct ar933x_uart_port*,unsigned int) ;
 int ar933x_uart_write (struct ar933x_uart_port*,unsigned int,unsigned int) ;

__attribute__((used)) static inline void ar933x_uart_rmw(struct ar933x_uart_port *up,
      unsigned int offset,
      unsigned int mask,
      unsigned int val)
{
 unsigned int t;

 t = ar933x_uart_read(up, offset);
 t &= ~mask;
 t |= val;
 ar933x_uart_write(up, offset, t);
}
