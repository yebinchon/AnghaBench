
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int mapbase; } ;
struct sirfsoc_uart_port {TYPE_1__* uart_reg; } ;
struct sirfsoc_uart_param {int port_name; } ;
struct TYPE_2__ {struct sirfsoc_uart_param uart_param; } ;


 int EBUSY ;
 int SIRFUART_MAP_SIZE ;
 void* request_mem_region (int ,int ,int ) ;
 struct sirfsoc_uart_port* to_sirfport (struct uart_port*) ;

__attribute__((used)) static int sirfsoc_uart_request_port(struct uart_port *port)
{
 struct sirfsoc_uart_port *sirfport = to_sirfport(port);
 struct sirfsoc_uart_param *uart_param = &sirfport->uart_reg->uart_param;
 void *ret;
 ret = request_mem_region(port->mapbase,
  SIRFUART_MAP_SIZE, uart_param->port_name);
 return ret ? 0 : -EBUSY;
}
