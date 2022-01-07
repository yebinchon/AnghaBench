
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ctlr_info {TYPE_1__* pdev; } ;
struct ReportLUNdata {scalar_t__ LUNListLength; } ;
struct ReportExtendedLUNdata {scalar_t__ LUNListLength; } ;
typedef int __be32 ;
struct TYPE_2__ {int dev; } ;


 int HPSA_MAX_LUN ;
 int HPSA_MAX_PHYS_LUN ;
 int be32_to_cpu (int ) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,int,int) ;
 scalar_t__ hpsa_scsi_do_report_log_luns (struct ctlr_info*,struct ReportLUNdata*,int) ;
 scalar_t__ hpsa_scsi_do_report_phys_luns (struct ctlr_info*,struct ReportExtendedLUNdata*,int) ;

__attribute__((used)) static int hpsa_gather_lun_info(struct ctlr_info *h,
 struct ReportExtendedLUNdata *physdev, u32 *nphysicals,
 struct ReportLUNdata *logdev, u32 *nlogicals)
{
 if (hpsa_scsi_do_report_phys_luns(h, physdev, sizeof(*physdev))) {
  dev_err(&h->pdev->dev, "report physical LUNs failed.\n");
  return -1;
 }
 *nphysicals = be32_to_cpu(*((__be32 *)physdev->LUNListLength)) / 24;
 if (*nphysicals > HPSA_MAX_PHYS_LUN) {
  dev_warn(&h->pdev->dev, "maximum physical LUNs (%d) exceeded. %d LUNs ignored.\n",
   HPSA_MAX_PHYS_LUN, *nphysicals - HPSA_MAX_PHYS_LUN);
  *nphysicals = HPSA_MAX_PHYS_LUN;
 }
 if (hpsa_scsi_do_report_log_luns(h, logdev, sizeof(*logdev))) {
  dev_err(&h->pdev->dev, "report logical LUNs failed.\n");
  return -1;
 }
 *nlogicals = be32_to_cpu(*((__be32 *) logdev->LUNListLength)) / 8;

 if (*nlogicals > HPSA_MAX_LUN) {
  dev_warn(&h->pdev->dev,
   "maximum logical LUNs (%d) exceeded.  "
   "%d LUNs ignored.\n", HPSA_MAX_LUN,
   *nlogicals - HPSA_MAX_LUN);
  *nlogicals = HPSA_MAX_LUN;
 }
 if (*nlogicals + *nphysicals > HPSA_MAX_PHYS_LUN) {
  dev_warn(&h->pdev->dev,
   "maximum logical + physical LUNs (%d) exceeded. "
   "%d LUNs ignored.\n", HPSA_MAX_PHYS_LUN,
   *nphysicals + *nlogicals - HPSA_MAX_PHYS_LUN);
  *nlogicals = HPSA_MAX_PHYS_LUN - *nphysicals;
 }
 return 0;
}
