
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int aspeed_vuart_set_throttle (struct uart_port*,int) ;

__attribute__((used)) static void aspeed_vuart_throttle(struct uart_port *port)
{
 aspeed_vuart_set_throttle(port, 1);
}
