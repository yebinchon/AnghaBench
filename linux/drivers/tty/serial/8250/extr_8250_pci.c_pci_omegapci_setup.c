
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;
struct serial_private {int dummy; } ;
struct pciserial_board {int dummy; } ;


 int setup_port (struct serial_private*,struct uart_8250_port*,int,int,int ) ;

__attribute__((used)) static int
pci_omegapci_setup(struct serial_private *priv,
        const struct pciserial_board *board,
        struct uart_8250_port *port, int idx)
{
 return setup_port(priv, port, 2, idx * 8, 0);
}
