
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {struct aspeed_vuart* private_data; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct aspeed_vuart {int dummy; } ;


 int aspeed_vuart_set_host_tx_discard (struct aspeed_vuart*,int) ;
 int serial8250_do_startup (struct uart_port*) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static int aspeed_vuart_startup(struct uart_port *uart_port)
{
 struct uart_8250_port *uart_8250_port = up_to_u8250p(uart_port);
 struct aspeed_vuart *vuart = uart_8250_port->port.private_data;
 int rc;

 rc = serial8250_do_startup(uart_port);
 if (rc)
  return rc;

 aspeed_vuart_set_host_tx_discard(vuart, 0);

 return 0;
}
