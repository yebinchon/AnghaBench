
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;
struct serial_private {int dummy; } ;
struct pciserial_board {int num_ports; int uart_offset; int flags; } ;


 unsigned int FL_GET_BASE (int ) ;
 int setup_port (struct serial_private*,struct uart_8250_port*,unsigned int,int,int ) ;

__attribute__((used)) static int
pci_moxa_setup(struct serial_private *priv,
  const struct pciserial_board *board,
  struct uart_8250_port *port, int idx)
{
 unsigned int bar = FL_GET_BASE(board->flags);
 int offset;

 if (board->num_ports == 4 && idx == 3)
  offset = 7 * board->uart_offset;
 else
  offset = idx * board->uart_offset;

 return setup_port(priv, port, bar, offset, 0);
}
