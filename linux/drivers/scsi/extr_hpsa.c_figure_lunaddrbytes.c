
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ctlr_info {int dummy; } ;
struct ReportLUNdata {int ** LUN; } ;
struct ReportExtendedLUNdata {TYPE_1__* LUN; } ;
struct TYPE_2__ {int * lunid; } ;


 int BUG () ;
 int * RAID_CTLR_LUNID ;

__attribute__((used)) static u8 *figure_lunaddrbytes(struct ctlr_info *h, int raid_ctlr_position,
 int i, int nphysicals, int nlogicals,
 struct ReportExtendedLUNdata *physdev_list,
 struct ReportLUNdata *logdev_list)
{





 int logicals_start = nphysicals + (raid_ctlr_position == 0);
 int last_device = nphysicals + nlogicals + (raid_ctlr_position == 0);

 if (i == raid_ctlr_position)
  return RAID_CTLR_LUNID;

 if (i < logicals_start)
  return &physdev_list->LUN[i -
    (raid_ctlr_position == 0)].lunid[0];

 if (i < last_device)
  return &logdev_list->LUN[i - nphysicals -
   (raid_ctlr_position == 0)][0];
 BUG();
 return ((void*)0);
}
