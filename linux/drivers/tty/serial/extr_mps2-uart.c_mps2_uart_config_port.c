
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int type; } ;


 int PORT_MPS2UART ;
 int UART_CONFIG_TYPE ;
 int mps2_uart_request_port (struct uart_port*) ;

__attribute__((used)) static void mps2_uart_config_port(struct uart_port *port, int type)
{
 if (type & UART_CONFIG_TYPE && !mps2_uart_request_port(port))
  port->type = PORT_MPS2UART;
}
