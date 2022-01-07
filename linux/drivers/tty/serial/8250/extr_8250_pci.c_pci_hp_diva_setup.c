
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_8250_port {int dummy; } ;
struct serial_private {TYPE_1__* dev; } ;
struct pciserial_board {unsigned int first_offset; int uart_offset; int reg_shift; int flags; } ;
struct TYPE_2__ {int subsystem_device; } ;


 unsigned int FL_GET_BASE (int ) ;


 int setup_port (struct serial_private*,struct uart_8250_port*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int
pci_hp_diva_setup(struct serial_private *priv,
  const struct pciserial_board *board,
  struct uart_8250_port *port, int idx)
{
 unsigned int offset = board->first_offset;
 unsigned int bar = FL_GET_BASE(board->flags);

 switch (priv->dev->subsystem_device) {
 case 128:
  if (idx == 3)
   idx++;
  break;
 case 129:
  if (idx > 0)
   idx++;
  if (idx > 2)
   idx++;
  break;
 }
 if (idx > 2)
  offset = 0x18;

 offset += idx * board->uart_offset;

 return setup_port(priv, port, bar, offset, board->reg_shift);
}
