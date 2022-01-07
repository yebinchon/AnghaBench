
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_6__ {int device_created; int irq_requested; int vector; } ;
struct TYPE_5__ {int msix_enabled; int class_added; int cdev_added; int requested_regions; int enabled_device; int * dev; int * regs; int * kernel_mapped_shm; TYPE_1__* layout; scalar_t__ major; int cdev; int class; int * regions; TYPE_3__* msix_entries; TYPE_3__* regions_data; } ;
struct TYPE_4__ {int region_count; } ;


 int MKDEV (scalar_t__,int) ;
 int cdev_del (int *) ;
 int class_destroy (int ) ;
 int dev_info (int *,char*) ;
 int device_destroy (int ,int ) ;
 int free_irq (int ,int *) ;
 int kfree (TYPE_3__*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msix (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int *) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_chrdev_region (int ,int) ;
 TYPE_2__ vsoc_dev ;

__attribute__((used)) static void vsoc_remove_device(struct pci_dev *pdev)
{
 int i;




 if (!pdev || !vsoc_dev.dev)
  return;
 dev_info(&pdev->dev, "remove_device\n");
 if (vsoc_dev.regions_data) {
  for (i = 0; i < vsoc_dev.layout->region_count; ++i) {
   if (vsoc_dev.regions_data[i].device_created) {
    device_destroy(vsoc_dev.class,
            MKDEV(vsoc_dev.major, i));
    vsoc_dev.regions_data[i].device_created = 0;
   }
   if (vsoc_dev.regions_data[i].irq_requested)
    free_irq(vsoc_dev.msix_entries[i].vector, ((void*)0));
   vsoc_dev.regions_data[i].irq_requested = 0;
  }
  kfree(vsoc_dev.regions_data);
  vsoc_dev.regions_data = ((void*)0);
 }
 if (vsoc_dev.msix_enabled) {
  pci_disable_msix(pdev);
  vsoc_dev.msix_enabled = 0;
 }
 kfree(vsoc_dev.msix_entries);
 vsoc_dev.msix_entries = ((void*)0);
 vsoc_dev.regions = ((void*)0);
 if (vsoc_dev.class_added) {
  class_destroy(vsoc_dev.class);
  vsoc_dev.class_added = 0;
 }
 if (vsoc_dev.cdev_added) {
  cdev_del(&vsoc_dev.cdev);
  vsoc_dev.cdev_added = 0;
 }
 if (vsoc_dev.major && vsoc_dev.layout) {
  unregister_chrdev_region(MKDEV(vsoc_dev.major, 0),
      vsoc_dev.layout->region_count);
  vsoc_dev.major = 0;
 }
 vsoc_dev.layout = ((void*)0);
 if (vsoc_dev.kernel_mapped_shm) {
  pci_iounmap(pdev, vsoc_dev.kernel_mapped_shm);
  vsoc_dev.kernel_mapped_shm = ((void*)0);
 }
 if (vsoc_dev.regs) {
  pci_iounmap(pdev, vsoc_dev.regs);
  vsoc_dev.regs = ((void*)0);
 }
 if (vsoc_dev.requested_regions) {
  pci_release_regions(pdev);
  vsoc_dev.requested_regions = 0;
 }
 if (vsoc_dev.enabled_device) {
  pci_disable_device(pdev);
  vsoc_dev.enabled_device = 0;
 }

 vsoc_dev.dev = ((void*)0);
}
