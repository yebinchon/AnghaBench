
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct MPT3SAS_ADAPTER {int msix_vector_count; TYPE_1__* pdev; } ;
struct TYPE_3__ {scalar_t__ device; scalar_t__ revision; } ;


 int EINVAL ;
 scalar_t__ MPI2_MFGPAGE_DEVID_SAS2004 ;
 scalar_t__ MPI2_MFGPAGE_DEVID_SAS2008 ;
 scalar_t__ MPI2_MFGPAGE_DEVID_SAS2108_1 ;
 scalar_t__ MPI2_MFGPAGE_DEVID_SAS2108_2 ;
 scalar_t__ MPI2_MFGPAGE_DEVID_SAS2108_3 ;
 scalar_t__ MPI2_MFGPAGE_DEVID_SAS2116_1 ;
 scalar_t__ MPI2_MFGPAGE_DEVID_SAS2116_2 ;
 int PCI_CAP_ID_MSIX ;
 scalar_t__ SAS2_PCI_DEVICE_B0_REVISION ;
 int dfailprintk (struct MPT3SAS_ADAPTER*,int ) ;
 int dinitprintk (struct MPT3SAS_ADAPTER*,int ) ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,...) ;
 int pci_find_capability (TYPE_1__*,int ) ;
 int pci_read_config_word (TYPE_1__*,int,int*) ;

__attribute__((used)) static int
_base_check_enable_msix(struct MPT3SAS_ADAPTER *ioc)
{
 int base;
 u16 message_control;




 if (ioc->pdev->device == MPI2_MFGPAGE_DEVID_SAS2008 &&
     ioc->pdev->revision == SAS2_PCI_DEVICE_B0_REVISION) {
  return -EINVAL;
 }

 base = pci_find_capability(ioc->pdev, PCI_CAP_ID_MSIX);
 if (!base) {
  dfailprintk(ioc, ioc_info(ioc, "msix not supported\n"));
  return -EINVAL;
 }



 if (ioc->pdev->device == MPI2_MFGPAGE_DEVID_SAS2004 ||
     ioc->pdev->device == MPI2_MFGPAGE_DEVID_SAS2008 ||
     ioc->pdev->device == MPI2_MFGPAGE_DEVID_SAS2108_1 ||
     ioc->pdev->device == MPI2_MFGPAGE_DEVID_SAS2108_2 ||
     ioc->pdev->device == MPI2_MFGPAGE_DEVID_SAS2108_3 ||
     ioc->pdev->device == MPI2_MFGPAGE_DEVID_SAS2116_1 ||
     ioc->pdev->device == MPI2_MFGPAGE_DEVID_SAS2116_2)
  ioc->msix_vector_count = 1;
 else {
  pci_read_config_word(ioc->pdev, base + 2, &message_control);
  ioc->msix_vector_count = (message_control & 0x3FF) + 1;
 }
 dinitprintk(ioc, ioc_info(ioc, "msix is supported, vector_count(%d)\n",
      ioc->msix_vector_count));
 return 0;
}
