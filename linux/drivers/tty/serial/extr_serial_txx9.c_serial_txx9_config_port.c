
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ line; TYPE_1__* cons; int fifosize; } ;
struct uart_txx9_port {TYPE_2__ port; } ;
struct uart_port {int type; } ;
struct TYPE_3__ {scalar_t__ index; } ;


 int PORT_TXX9 ;
 int TXX9_SIO_TX_FIFO ;
 int serial_txx9_initialize (struct uart_port*) ;
 int serial_txx9_request_resource (struct uart_txx9_port*) ;
 struct uart_txx9_port* to_uart_txx9_port (struct uart_port*) ;

__attribute__((used)) static void serial_txx9_config_port(struct uart_port *port, int uflags)
{
 struct uart_txx9_port *up = to_uart_txx9_port(port);
 int ret;





 ret = serial_txx9_request_resource(up);
 if (ret < 0)
  return;
 port->type = PORT_TXX9;
 up->port.fifosize = TXX9_SIO_TX_FIFO;





 serial_txx9_initialize(port);
}
