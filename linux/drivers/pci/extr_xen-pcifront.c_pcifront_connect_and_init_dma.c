
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcifront_device {TYPE_1__* xdev; } ;
struct TYPE_2__ {int dev; } ;


 int EEXIST ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int pci_xen_swiotlb_init_late () ;
 struct pcifront_device* pcifront_dev ;
 int pcifront_dev_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int swiotlb_nr_tbl () ;

__attribute__((used)) static int pcifront_connect_and_init_dma(struct pcifront_device *pdev)
{
 int err = 0;

 spin_lock(&pcifront_dev_lock);

 if (!pcifront_dev) {
  dev_info(&pdev->xdev->dev, "Installing PCI frontend\n");
  pcifront_dev = pdev;
 } else
  err = -EEXIST;

 spin_unlock(&pcifront_dev_lock);

 if (!err && !swiotlb_nr_tbl()) {
  err = pci_xen_swiotlb_init_late();
  if (err)
   dev_err(&pdev->xdev->dev, "Could not setup SWIOTLB!\n");
 }
 return err;
}
