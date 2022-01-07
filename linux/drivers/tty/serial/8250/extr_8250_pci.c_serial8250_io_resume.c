
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_private {int board; } ;
struct pci_dev {int dummy; } ;


 int IS_ERR (struct serial_private*) ;
 int kfree (struct serial_private*) ;
 struct serial_private* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct serial_private*) ;
 struct serial_private* pciserial_init_ports (struct pci_dev*,int ) ;

__attribute__((used)) static void serial8250_io_resume(struct pci_dev *dev)
{
 struct serial_private *priv = pci_get_drvdata(dev);
 struct serial_private *new;

 if (!priv)
  return;

 new = pciserial_init_ports(dev, priv->board);
 if (!IS_ERR(new)) {
  pci_set_drvdata(dev, new);
  kfree(priv);
 }
}
