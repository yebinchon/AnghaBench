
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; scalar_t__ multifunction; } ;


 int device_disable_async_suspend (int *) ;
 int pci_info (struct pci_dev*,char*) ;

__attribute__((used)) static void quirk_jmicron_async_suspend(struct pci_dev *dev)
{
 if (dev->multifunction) {
  device_disable_async_suspend(&dev->dev);
  pci_info(dev, "async suspend disabled to avoid multi-function power-on ordering issue\n");
 }
}
