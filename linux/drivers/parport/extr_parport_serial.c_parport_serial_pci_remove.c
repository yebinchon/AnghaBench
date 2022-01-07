
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct parport_serial_private {int num_par; int * port; scalar_t__ serial; } ;


 int parport_pc_unregister_port (int ) ;
 struct parport_serial_private* pci_get_drvdata (struct pci_dev*) ;
 int pciserial_remove_ports (scalar_t__) ;

__attribute__((used)) static void parport_serial_pci_remove(struct pci_dev *dev)
{
 struct parport_serial_private *priv = pci_get_drvdata (dev);
 int i;


 if (priv->serial)
  pciserial_remove_ports(priv->serial);


 for (i = 0; i < priv->num_par; i++)
  parport_pc_unregister_port (priv->port[i]);

 return;
}
