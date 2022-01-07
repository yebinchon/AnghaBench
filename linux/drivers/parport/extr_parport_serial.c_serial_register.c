
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_private {int dummy; } ;
struct pciserial_board {scalar_t__ num_ports; } ;
struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int dummy; } ;
struct parport_serial_private {struct serial_private* serial; } ;


 scalar_t__ IS_ERR (struct serial_private*) ;
 int PTR_ERR (struct serial_private*) ;
 struct parport_serial_private* pci_get_drvdata (struct pci_dev*) ;
 struct pciserial_board* pci_parport_serial_boards ;
 struct serial_private* pciserial_init_ports (struct pci_dev*,struct pciserial_board*) ;

__attribute__((used)) static int serial_register(struct pci_dev *dev, const struct pci_device_id *id)
{
 struct parport_serial_private *priv = pci_get_drvdata (dev);
 struct pciserial_board *board;
 struct serial_private *serial;

 board = &pci_parport_serial_boards[id->driver_data];
 if (board->num_ports == 0)
  return 0;

 serial = pciserial_init_ports(dev, board);
 if (IS_ERR(serial))
  return PTR_ERR(serial);

 priv->serial = serial;
 return 0;
}
