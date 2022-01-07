
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;
struct serial_private {int dummy; } ;
struct pciserial_board {unsigned int first_offset; int uart_offset; int reg_shift; } ;


 int setup_port (struct serial_private*,struct uart_8250_port*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int
titan_400l_800l_setup(struct serial_private *priv,
        const struct pciserial_board *board,
        struct uart_8250_port *port, int idx)
{
 unsigned int bar, offset = board->first_offset;

 switch (idx) {
 case 0:
  bar = 1;
  break;
 case 1:
  bar = 2;
  break;
 default:
  bar = 4;
  offset = (idx - 2) * board->uart_offset;
 }

 return setup_port(priv, port, bar, offset, board->reg_shift);
}
