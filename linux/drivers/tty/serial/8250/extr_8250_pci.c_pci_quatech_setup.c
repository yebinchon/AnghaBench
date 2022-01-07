
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uartclk; int iobase; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct serial_private {int dev; } ;
struct pciserial_board {int flags; } ;


 int FL_GET_BASE (int ) ;
 int pci_default_setup (struct serial_private*,struct pciserial_board const*,struct uart_8250_port*,int) ;
 int pci_quatech_clock (struct uart_8250_port*) ;
 scalar_t__ pci_quatech_rs422 (struct uart_8250_port*) ;
 int pci_resource_start (int ,int ) ;
 int pr_warn (char*) ;

__attribute__((used)) static int pci_quatech_setup(struct serial_private *priv,
    const struct pciserial_board *board,
    struct uart_8250_port *port, int idx)
{

 port->port.iobase = pci_resource_start(priv->dev, FL_GET_BASE(board->flags));

 port->port.uartclk = pci_quatech_clock(port);

 if (pci_quatech_rs422(port))
  pr_warn("quatech: software control of RS422 features not currently supported.\n");
 return pci_default_setup(priv, board, port, idx);
}
