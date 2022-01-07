
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ topo; } ;
struct intel_ntb_dev {int lnk_sta; TYPE_1__ ntb; } ;


 int NTB_LNK_STA_ACTIVE (int ) ;
 scalar_t__ NTB_TOPO_SEC ;

int xeon_link_is_up(struct intel_ntb_dev *ndev)
{
 if (ndev->ntb.topo == NTB_TOPO_SEC)
  return 1;

 return NTB_LNK_STA_ACTIVE(ndev->lnk_sta);
}
