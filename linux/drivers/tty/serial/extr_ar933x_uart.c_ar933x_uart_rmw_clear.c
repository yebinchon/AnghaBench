
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar933x_uart_port {int dummy; } ;


 int ar933x_uart_rmw (struct ar933x_uart_port*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static inline void ar933x_uart_rmw_clear(struct ar933x_uart_port *up,
      unsigned int offset,
      unsigned int val)
{
 ar933x_uart_rmw(up, offset, val, 0);
}
