
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int bugs; } ;
struct serial_private {int dummy; } ;
struct pciserial_board {int dummy; } ;


 int UART_BUG_PARITY ;
 int pci_default_setup (struct serial_private*,struct pciserial_board const*,struct uart_8250_port*,int) ;

__attribute__((used)) static int pci_asix_setup(struct serial_private *priv,
    const struct pciserial_board *board,
    struct uart_8250_port *port, int idx)
{
 port->bugs |= UART_BUG_PARITY;
 return pci_default_setup(priv, board, port, idx);
}
