
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;


 int autoconfig_read_divisor_id (struct uart_8250_port*) ;
 int size_fifo (struct uart_8250_port*) ;

__attribute__((used)) static int broken_efr(struct uart_8250_port *up)
{





 if (autoconfig_read_divisor_id(up) == 0x0201 && size_fifo(up) == 16)
  return 1;

 return 0;
}
