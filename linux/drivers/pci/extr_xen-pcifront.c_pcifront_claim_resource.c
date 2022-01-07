
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {scalar_t__ flags; scalar_t__ start; int parent; } ;
struct pcifront_device {TYPE_1__* xdev; } ;
struct pci_dev {struct resource* resource; } ;
struct TYPE_2__ {int dev; } ;


 int PCI_NUM_RESOURCES ;
 int dev_err (int *,char*,int ,int) ;
 int dev_info (int *,char*,int ,int) ;
 scalar_t__ pci_claim_resource (struct pci_dev*,int) ;
 int pci_name (struct pci_dev*) ;

__attribute__((used)) static int pcifront_claim_resource(struct pci_dev *dev, void *data)
{
 struct pcifront_device *pdev = data;
 int i;
 struct resource *r;

 for (i = 0; i < PCI_NUM_RESOURCES; i++) {
  r = &dev->resource[i];

  if (!r->parent && r->start && r->flags) {
   dev_info(&pdev->xdev->dev, "claiming resource %s/%d\n",
    pci_name(dev), i);
   if (pci_claim_resource(dev, i)) {
    dev_err(&pdev->xdev->dev, "Could not claim resource %s/%d! "
     "Device offline. Try using e820_host=1 in the guest config.\n",
     pci_name(dev), i);
   }
  }
 }

 return 0;
}
