
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;
struct serial_private {int dummy; } ;
struct pciserial_board {int flags; } ;


 int FL_GET_BASE (int ) ;
 int setup_port (struct serial_private*,struct uart_8250_port*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int pci_siig_setup(struct serial_private *priv,
     const struct pciserial_board *board,
     struct uart_8250_port *port, int idx)
{
 unsigned int bar = FL_GET_BASE(board->flags) + idx, offset = 0;

 if (idx > 3) {
  bar = 4;
  offset = (idx - 4) * 8;
 }

 return setup_port(priv, port, bar, offset, 0);
}
