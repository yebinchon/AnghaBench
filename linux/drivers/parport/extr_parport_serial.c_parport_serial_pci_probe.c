
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct parport_serial_private {int num_par; int * port; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct parport_serial_private* devm_kzalloc (int *,int,int ) ;
 int parport_pc_unregister_port (int ) ;
 int parport_register (struct pci_dev*,struct pci_device_id const*) ;
 int pci_set_drvdata (struct pci_dev*,struct parport_serial_private*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int serial_register (struct pci_dev*,struct pci_device_id const*) ;

__attribute__((used)) static int parport_serial_pci_probe(struct pci_dev *dev,
        const struct pci_device_id *id)
{
 struct parport_serial_private *priv;
 int err;

 priv = devm_kzalloc(&dev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 pci_set_drvdata (dev, priv);

 err = pcim_enable_device(dev);
 if (err)
  return err;

 err = parport_register(dev, id);
 if (err)
  return err;

 err = serial_register(dev, id);
 if (err) {
  int i;
  for (i = 0; i < priv->num_par; i++)
   parport_pc_unregister_port (priv->port[i]);
  return err;
 }

 return 0;
}
