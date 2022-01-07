
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ctlr_info {TYPE_1__* pdev; } ;
struct ReportExtendedLUNdata {TYPE_2__* LUN; int LUNListLength; } ;
struct TYPE_4__ {int * wwid; int * lunid; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int get_unaligned_be32 (int ) ;
 int get_unaligned_be64 (int *) ;
 scalar_t__ hpsa_scsi_do_report_phys_luns (struct ctlr_info*,struct ReportExtendedLUNdata*,int) ;
 int kfree (struct ReportExtendedLUNdata*) ;
 struct ReportExtendedLUNdata* kzalloc (int,int ) ;
 int memcmp (int *,unsigned char*,int) ;

__attribute__((used)) static u64 hpsa_get_sas_address_from_report_physical(struct ctlr_info *h,
      unsigned char *scsi3addr)
{
 struct ReportExtendedLUNdata *physdev;
 u32 nphysicals;
 u64 sa = 0;
 int i;

 physdev = kzalloc(sizeof(*physdev), GFP_KERNEL);
 if (!physdev)
  return 0;

 if (hpsa_scsi_do_report_phys_luns(h, physdev, sizeof(*physdev))) {
  dev_err(&h->pdev->dev, "report physical LUNs failed.\n");
  kfree(physdev);
  return 0;
 }
 nphysicals = get_unaligned_be32(physdev->LUNListLength) / 24;

 for (i = 0; i < nphysicals; i++)
  if (!memcmp(&physdev->LUN[i].lunid[0], scsi3addr, 8)) {
   sa = get_unaligned_be64(&physdev->LUN[i].wwid[0]);
   break;
  }

 kfree(physdev);

 return sa;
}
