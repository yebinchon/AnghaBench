
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int type; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct serial_private {int dummy; } ;
struct pciserial_board {int dummy; } ;


 int PORT_BRCM_TRUMANAGE ;
 int UPF_FIXED_PORT ;
 int UPF_FIXED_TYPE ;
 int pci_default_setup (struct serial_private*,struct pciserial_board const*,struct uart_8250_port*,int) ;

__attribute__((used)) static int
pci_brcm_trumanage_setup(struct serial_private *priv,
    const struct pciserial_board *board,
    struct uart_8250_port *port, int idx)
{
 int ret = pci_default_setup(priv, board, port, idx);

 port->port.type = PORT_BRCM_TRUMANAGE;
 port->port.flags = (port->port.flags | UPF_FIXED_PORT | UPF_FIXED_TYPE);
 return ret;
}
