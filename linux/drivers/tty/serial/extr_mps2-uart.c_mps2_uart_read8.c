
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; } ;
struct mps2_uart_port {TYPE_1__ port; } ;


 int readb (scalar_t__) ;
 struct mps2_uart_port* to_mps2_port (struct uart_port*) ;

__attribute__((used)) static u8 mps2_uart_read8(struct uart_port *port, unsigned int off)
{
 struct mps2_uart_port *mps_port = to_mps2_port(port);

 return readb(mps_port->port.membase + off);
}
