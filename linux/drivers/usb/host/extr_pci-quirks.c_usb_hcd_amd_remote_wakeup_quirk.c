
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_3__ {scalar_t__ gen; } ;
struct TYPE_4__ {TYPE_1__ sb_type; } ;


 scalar_t__ AMD_CHIPSET_TAISHAN ;
 scalar_t__ AMD_CHIPSET_YANGTZE ;
 TYPE_2__ amd_chipset ;
 int dev_dbg (int *,char*) ;
 int usb_amd_find_chipset_info () ;

int usb_hcd_amd_remote_wakeup_quirk(struct pci_dev *pdev)
{

 usb_amd_find_chipset_info();
 if (amd_chipset.sb_type.gen == AMD_CHIPSET_YANGTZE ||
     amd_chipset.sb_type.gen == AMD_CHIPSET_TAISHAN) {
  dev_dbg(&pdev->dev, "QUIRK: Enable AMD remote wakeup fix\n");
  return 1;
 }
 return 0;
}
