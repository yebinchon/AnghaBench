
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ENODEV ;
 int gige_pci_init_callback ;
 int ssb_for_each_bus_call (unsigned long,int ) ;
 int ssb_pcicore_plat_dev_init (struct pci_dev*) ;

int ssb_pcibios_plat_dev_init(struct pci_dev *dev)
{
 int err;

 err = ssb_pcicore_plat_dev_init(dev);
 if (!err)
  return 0;







 return -ENODEV;
}
