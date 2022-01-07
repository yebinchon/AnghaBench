
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_private {int dummy; } ;
struct pci_dev {int dummy; } ;


 struct serial_private* pci_get_drvdata (struct pci_dev*) ;
 int pciserial_remove_ports (struct serial_private*) ;

__attribute__((used)) static void pciserial_remove_one(struct pci_dev *dev)
{
 struct serial_private *priv = pci_get_drvdata(dev);

 pciserial_remove_ports(priv);
}
