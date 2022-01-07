
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shutdown; int pm; int type; int set_divisor; int get_divisor; scalar_t__ membase; int regshift; scalar_t__ mapbase; int iotype; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct pci_dev {int dummy; } ;
struct exar8250_board {int reg_shift; } ;
struct exar8250 {scalar_t__ virt; struct exar8250_board* board; } ;


 int PORT_XR17D15X ;
 int PORT_XR17V35X ;
 scalar_t__ UART_EXAR_DVID ;
 int UPIO_MEM ;
 int exar_pm ;
 int exar_shutdown ;
 scalar_t__ pci_resource_start (struct pci_dev*,unsigned int) ;
 unsigned char readb (scalar_t__) ;
 int xr17v35x_get_divisor ;
 int xr17v35x_set_divisor ;

__attribute__((used)) static int default_setup(struct exar8250 *priv, struct pci_dev *pcidev,
    int idx, unsigned int offset,
    struct uart_8250_port *port)
{
 const struct exar8250_board *board = priv->board;
 unsigned int bar = 0;
 unsigned char status;

 port->port.iotype = UPIO_MEM;
 port->port.mapbase = pci_resource_start(pcidev, bar) + offset;
 port->port.membase = priv->virt + offset;
 port->port.regshift = board->reg_shift;
 status = readb(port->port.membase + UART_EXAR_DVID);
 if (status == 0x82 || status == 0x84 || status == 0x88) {
  port->port.type = PORT_XR17V35X;

  port->port.get_divisor = xr17v35x_get_divisor;
  port->port.set_divisor = xr17v35x_set_divisor;
 } else {
  port->port.type = PORT_XR17D15X;
 }

 port->port.pm = exar_pm;
 port->port.shutdown = exar_shutdown;

 return 0;
}
