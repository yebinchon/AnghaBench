
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct rtw_dm_info {scalar_t__ cck_fa_avg; } ;
struct rtw_dev {struct rtw_dm_info dm_info; } ;


 scalar_t__ CCK_PD_FA_LV0_MAX ;
 scalar_t__ CCK_PD_FA_LV1_MIN ;
 int CCK_PD_LV_MAX ;

__attribute__((used)) static u8 rtw_phy_cck_pd_lv_unlink(struct rtw_dev *rtwdev)
{
 struct rtw_dm_info *dm_info = &rtwdev->dm_info;
 u32 cck_fa_avg = dm_info->cck_fa_avg;

 if (cck_fa_avg > CCK_PD_FA_LV1_MIN)
  return 1;

 if (cck_fa_avg < CCK_PD_FA_LV0_MAX)
  return 0;

 return CCK_PD_LV_MAX;
}
