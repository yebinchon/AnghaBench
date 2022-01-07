
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;
struct serial_private {int dummy; } ;
struct pciserial_board {unsigned int first_offset; int uart_offset; int reg_shift; } ;


 int setup_port (struct serial_private*,struct uart_8250_port*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int
sbs_setup(struct serial_private *priv, const struct pciserial_board *board,
  struct uart_8250_port *port, int idx)
{
 unsigned int bar, offset = board->first_offset;

 bar = 0;

 if (idx < 4) {

  offset += idx * board->uart_offset;
 } else if (idx < 8) {

  offset += idx * board->uart_offset + 0xC00;
 } else
  return 1;

 return setup_port(priv, port, bar, offset, board->reg_shift);
}
