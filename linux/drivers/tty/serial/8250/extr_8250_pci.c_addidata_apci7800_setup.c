
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;
struct serial_private {int dummy; } ;
struct pciserial_board {unsigned int first_offset; int uart_offset; int reg_shift; int flags; } ;


 unsigned int FL_GET_BASE (int ) ;
 int setup_port (struct serial_private*,struct uart_8250_port*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int addidata_apci7800_setup(struct serial_private *priv,
    const struct pciserial_board *board,
    struct uart_8250_port *port, int idx)
{
 unsigned int bar = 0, offset = board->first_offset;
 bar = FL_GET_BASE(board->flags);

 if (idx < 2) {
  offset += idx * board->uart_offset;
 } else if ((idx >= 2) && (idx < 4)) {
  bar += 1;
  offset += ((idx - 2) * board->uart_offset);
 } else if ((idx >= 4) && (idx < 6)) {
  bar += 2;
  offset += ((idx - 4) * board->uart_offset);
 } else if (idx >= 6) {
  bar += 3;
  offset += ((idx - 6) * board->uart_offset);
 }

 return setup_port(priv, port, bar, offset, board->reg_shift);
}
