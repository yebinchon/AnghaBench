
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int handle_break; int serial_in; int flags; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct serial_private {int dummy; } ;
struct pciserial_board {int dummy; } ;


 int UPF_BUG_THRE ;
 int kt_handle_break ;
 int kt_serial_in ;
 int skip_tx_en_setup (struct serial_private*,struct pciserial_board const*,struct uart_8250_port*,int) ;

__attribute__((used)) static int kt_serial_setup(struct serial_private *priv,
      const struct pciserial_board *board,
      struct uart_8250_port *port, int idx)
{
 port->port.flags |= UPF_BUG_THRE;
 port->port.serial_in = kt_serial_in;
 port->port.handle_break = kt_handle_break;
 return skip_tx_en_setup(priv, board, port, idx);
}
