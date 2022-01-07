
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct matrox_device {int virt_addr; int bus_master; scalar_t__ found; } ;


 int iounmap (int ) ;
 int kfree (struct matrox_device*) ;
 struct matrox_device* pci_get_drvdata (struct pci_dev*) ;
 int w1_remove_master_device (int ) ;

__attribute__((used)) static void matrox_w1_remove(struct pci_dev *pdev)
{
 struct matrox_device *dev = pci_get_drvdata(pdev);

 if (dev->found) {
  w1_remove_master_device(dev->bus_master);
  iounmap(dev->virt_addr);
 }
 kfree(dev);
}
