
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int vendor; int device; } ;


 int DMI_BOARD_NAME ;
 int DMI_BOARD_VENDOR ;
 int DMI_PRODUCT_NAME ;
 int DMI_SYS_VENDOR ;
 unsigned long NVME_QUIRK_NO_APST ;
 unsigned long NVME_QUIRK_NO_DEEPEST_PS ;
 scalar_t__ dmi_match (int ,char*) ;

__attribute__((used)) static unsigned long check_vendor_combination_bug(struct pci_dev *pdev)
{
 if (pdev->vendor == 0x144d && pdev->device == 0xa802) {
  if (dmi_match(DMI_SYS_VENDOR, "Dell Inc.") &&
      (dmi_match(DMI_PRODUCT_NAME, "XPS 15 9550") ||
       dmi_match(DMI_PRODUCT_NAME, "Precision 5510")))
   return NVME_QUIRK_NO_DEEPEST_PS;
 } else if (pdev->vendor == 0x144d && pdev->device == 0xa804) {






  if (dmi_match(DMI_BOARD_VENDOR, "ASUSTeK COMPUTER INC.") &&
      (dmi_match(DMI_BOARD_NAME, "PRIME B350M-A") ||
       dmi_match(DMI_BOARD_NAME, "PRIME Z370-A")))
   return NVME_QUIRK_NO_APST;
 }

 return 0;
}
