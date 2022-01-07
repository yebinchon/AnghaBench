
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct comedi_driver {int dummy; } ;


 int comedi_auto_config (int *,struct comedi_driver*,unsigned long) ;

int comedi_pci_auto_config(struct pci_dev *pcidev,
      struct comedi_driver *driver,
      unsigned long context)
{
 return comedi_auto_config(&pcidev->dev, driver, context);
}
