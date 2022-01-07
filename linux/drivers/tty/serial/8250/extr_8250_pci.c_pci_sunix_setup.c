
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int flags; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct serial_private {int dummy; } ;
struct pciserial_board {int uart_offset; } ;


 int PORT_SUNIX ;
 int UPF_FIXED_TYPE ;
 int div_s64_rem (int,int,int*) ;
 int setup_port (struct serial_private*,struct uart_8250_port*,int,int,int ) ;

__attribute__((used)) static int
pci_sunix_setup(struct serial_private *priv,
  const struct pciserial_board *board,
  struct uart_8250_port *port, int idx)
{
 int bar;
 int offset;

 port->port.flags |= UPF_FIXED_TYPE;
 port->port.type = PORT_SUNIX;

 if (idx < 4) {
  bar = 0;
  offset = idx * board->uart_offset;
 } else {
  bar = 1;
  idx -= 4;
  idx = div_s64_rem(idx, 4, &offset);
  offset = idx * 64 + offset * board->uart_offset;
 }

 return setup_port(priv, port, bar, offset, 0);
}
