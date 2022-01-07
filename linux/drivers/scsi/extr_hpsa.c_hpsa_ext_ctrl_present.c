
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ctlr_info {int discovery_polling; TYPE_2__* pdev; } ;
struct ReportExtendedLUNdata {TYPE_1__* LUN; int LUNListLength; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ device_type; int lunid; } ;


 scalar_t__ BMIC_DEVICE_TYPE_CONTROLLER ;
 int dev_info (int *,char*) ;
 int get_unaligned_be32 (int ) ;
 int hpsa_disable_rld_caching (struct ctlr_info*) ;
 int is_hba_lunid (int ) ;

__attribute__((used)) static void hpsa_ext_ctrl_present(struct ctlr_info *h,
 struct ReportExtendedLUNdata *physdev)
{
 u32 nphysicals;
 int i;

 if (h->discovery_polling)
  return;

 nphysicals = (get_unaligned_be32(physdev->LUNListLength) / 24) + 1;

 for (i = 0; i < nphysicals; i++) {
  if (physdev->LUN[i].device_type ==
   BMIC_DEVICE_TYPE_CONTROLLER
   && !is_hba_lunid(physdev->LUN[i].lunid)) {
   dev_info(&h->pdev->dev,
    "External controller present, activate discovery polling and disable rld caching\n");
   hpsa_disable_rld_caching(h);
   h->discovery_polling = 1;
   break;
  }
 }
}
