
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_6__ {int* phy_rate; TYPE_4__* ffe_ctl; TYPE_3__* phy_tuning; } ;
struct mvs_info {TYPE_2__ hba_info_param; TYPE_1__* pdev; } ;
struct TYPE_8__ {int ffe_rss_sel; int ffe_cap_sel; } ;
struct TYPE_7__ {int trans_emp_amp; int trans_amp; int trans_amp_adj; } ;
struct TYPE_5__ {int revision; } ;







 int set_phy_ffe_tuning (struct mvs_info*,int,TYPE_4__) ;
 int set_phy_rate (struct mvs_info*,int,int) ;
 int set_phy_tuning (struct mvs_info*,int,TYPE_3__) ;

__attribute__((used)) static void mvs_94xx_config_reg_from_hba(struct mvs_info *mvi, int phy_id)
{
 u32 temp;
 temp = (u32)(*(u32 *)&mvi->hba_info_param.phy_tuning[phy_id]);
 if (temp == 0xFFFFFFFFL) {
  mvi->hba_info_param.phy_tuning[phy_id].trans_emp_amp = 0x6;
  mvi->hba_info_param.phy_tuning[phy_id].trans_amp = 0x1A;
  mvi->hba_info_param.phy_tuning[phy_id].trans_amp_adj = 0x3;
 }

 temp = (u8)(*(u8 *)&mvi->hba_info_param.ffe_ctl[phy_id]);
 if (temp == 0xFFL) {
  switch (mvi->pdev->revision) {
  case 132:
  case 131:
   mvi->hba_info_param.ffe_ctl[phy_id].ffe_rss_sel = 0x7;
   mvi->hba_info_param.ffe_ctl[phy_id].ffe_cap_sel = 0x7;
   break;
  case 130:
  case 129:
  case 128:
  default:
   mvi->hba_info_param.ffe_ctl[phy_id].ffe_rss_sel = 0x7;
   mvi->hba_info_param.ffe_ctl[phy_id].ffe_cap_sel = 0xC;
   break;
  }
 }

 temp = (u8)(*(u8 *)&mvi->hba_info_param.phy_rate[phy_id]);
 if (temp == 0xFFL)

  mvi->hba_info_param.phy_rate[phy_id] = 0x2;

 set_phy_tuning(mvi, phy_id,
  mvi->hba_info_param.phy_tuning[phy_id]);
 set_phy_ffe_tuning(mvi, phy_id,
  mvi->hba_info_param.ffe_ctl[phy_id]);
 set_phy_rate(mvi, phy_id,
  mvi->hba_info_param.phy_rate[phy_id]);
}
