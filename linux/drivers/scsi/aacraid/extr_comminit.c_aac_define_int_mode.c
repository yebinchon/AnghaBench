
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct aac_dev {int max_msix; int vector_cap; int msi_enabled; scalar_t__ comm_interface; TYPE_1__* scsi_host_ptr; scalar_t__ sa_firmware; TYPE_2__* pdev; scalar_t__ sync_mode; } ;
struct TYPE_5__ {scalar_t__ device; int dev; } ;
struct TYPE_4__ {int can_queue; } ;


 scalar_t__ AAC_COMM_MESSAGE_TYPE3 ;
 int AAC_MAX_MSIX ;
 int AAC_NUM_MGT_FIB ;
 int PCI_CAP_ID_MSIX ;
 int PCI_IRQ_AFFINITY ;
 int PCI_IRQ_MSIX ;
 scalar_t__ PMC_DEVICE_S6 ;
 int dev_err (int *,char*,int) ;
 int min (int,unsigned int) ;
 scalar_t__ num_online_cpus () ;
 int pci_alloc_irq_vectors (TYPE_2__*,int,int,int) ;
 scalar_t__ pci_find_capability (TYPE_2__*,int ) ;

void aac_define_int_mode(struct aac_dev *dev)
{
 int i, msi_count, min_msix;

 msi_count = i = 0;

 if (dev->max_msix == 0 ||
     dev->pdev->device == PMC_DEVICE_S6 ||
     dev->sync_mode) {
  dev->max_msix = 1;
  dev->vector_cap =
   dev->scsi_host_ptr->can_queue +
   AAC_NUM_MGT_FIB;
  return;
 }


 msi_count = min(dev->max_msix,
  (unsigned int)num_online_cpus());

 dev->max_msix = msi_count;

 if (msi_count > AAC_MAX_MSIX)
  msi_count = AAC_MAX_MSIX;

 if (msi_count > 1 &&
     pci_find_capability(dev->pdev, PCI_CAP_ID_MSIX)) {
  min_msix = 2;
  i = pci_alloc_irq_vectors(dev->pdev,
       min_msix, msi_count,
       PCI_IRQ_MSIX | PCI_IRQ_AFFINITY);
  if (i > 0) {
   dev->msi_enabled = 1;
   msi_count = i;
  } else {
   dev->msi_enabled = 0;
   dev_err(&dev->pdev->dev,
   "MSIX not supported!! Will try INTX 0x%x.\n", i);
  }
 }

 if (!dev->msi_enabled)
  dev->max_msix = msi_count = 1;
 else {
  if (dev->max_msix > msi_count)
   dev->max_msix = msi_count;
 }
 if (dev->comm_interface == AAC_COMM_MESSAGE_TYPE3 && dev->sa_firmware)
  dev->vector_cap = dev->scsi_host_ptr->can_queue +
    AAC_NUM_MGT_FIB;
 else
  dev->vector_cap = (dev->scsi_host_ptr->can_queue +
    AAC_NUM_MGT_FIB) / msi_count;

}
