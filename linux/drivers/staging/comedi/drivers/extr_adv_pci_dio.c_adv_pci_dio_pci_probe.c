
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int driver_data; } ;
struct pci_dev {int dummy; } ;


 int adv_pci_dio_driver ;
 int comedi_pci_auto_config (struct pci_dev*,int *,unsigned long) ;
 unsigned long pci_dio_override_cardtype (struct pci_dev*,int ) ;

__attribute__((used)) static int adv_pci_dio_pci_probe(struct pci_dev *dev,
     const struct pci_device_id *id)
{
 unsigned long cardtype;

 cardtype = pci_dio_override_cardtype(dev, id->driver_data);
 return comedi_pci_auto_config(dev, &adv_pci_dio_driver, cardtype);
}
