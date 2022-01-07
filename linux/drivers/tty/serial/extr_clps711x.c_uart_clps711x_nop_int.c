
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;



__attribute__((used)) static int uart_clps711x_nop_int(struct uart_port *port)
{
 return 0;
}
