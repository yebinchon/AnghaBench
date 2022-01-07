
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int dummy; } ;



__attribute__((used)) static int figure_external_status(struct ctlr_info *h, int raid_ctlr_position,
 int i, int nphysicals, int nlocal_logicals)
{



 int logicals_start = nphysicals + (raid_ctlr_position == 0);

 if (i == raid_ctlr_position)
  return 0;

 if (i < logicals_start)
  return 0;


 if ((i - nphysicals - (raid_ctlr_position == 0)) < nlocal_logicals)
  return 0;

 return 1;
}
