
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ membase; } ;
struct mps2_uart_port {TYPE_1__ port; } ;


 struct mps2_uart_port* to_mps2_port (struct uart_port*) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void mps2_uart_write8(struct uart_port *port, u8 val, unsigned int off)
{
 struct mps2_uart_port *mps_port = to_mps2_port(port);

 writeb(val, mps_port->port.membase + off);
}
