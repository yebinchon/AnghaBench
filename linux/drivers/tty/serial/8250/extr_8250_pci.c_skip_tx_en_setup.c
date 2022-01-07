
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int quirks; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct serial_private {TYPE_2__* dev; } ;
struct pciserial_board {int dummy; } ;
struct TYPE_4__ {int subsystem_device; int subsystem_vendor; int device; int vendor; int dev; } ;


 int UPQ_NO_TXEN_TEST ;
 int dev_dbg (int *,char*,int ,int ,int ,int ) ;
 int pci_default_setup (struct serial_private*,struct pciserial_board const*,struct uart_8250_port*,int) ;

__attribute__((used)) static int skip_tx_en_setup(struct serial_private *priv,
   const struct pciserial_board *board,
   struct uart_8250_port *port, int idx)
{
 port->port.quirks |= UPQ_NO_TXEN_TEST;
 dev_dbg(&priv->dev->dev,
  "serial8250: skipping TxEn test for device [%04x:%04x] subsystem [%04x:%04x]\n",
  priv->dev->vendor, priv->dev->device,
  priv->dev->subsystem_vendor, priv->dev->subsystem_device);

 return pci_default_setup(priv, board, port, idx);
}
