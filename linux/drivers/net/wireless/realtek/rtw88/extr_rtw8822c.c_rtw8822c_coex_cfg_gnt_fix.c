
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_efuse {scalar_t__ share_ant; } ;
struct rtw_coex_stat {scalar_t__ gnt_workaround_state; scalar_t__ wl_coex_mode; int kt_ver; } ;
struct rtw_coex {scalar_t__ under_5g; scalar_t__ freerun; struct rtw_coex_stat stat; } ;
struct rtw_dev {struct rtw_efuse efuse; struct rtw_coex coex; } ;


 int BIT (int) ;
 scalar_t__ COEX_WLINK_5G ;
 int RF_PATH_B ;
 int rtw_write8_mask (struct rtw_dev*,int,int,int) ;
 int rtw_write_rf (struct rtw_dev*,int ,int,int,int) ;

__attribute__((used)) static void rtw8822c_coex_cfg_gnt_fix(struct rtw_dev *rtwdev)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_stat *coex_stat = &coex->stat;
 struct rtw_efuse *efuse = &rtwdev->efuse;
 u32 rf_0x1;

 if (coex_stat->gnt_workaround_state == coex_stat->wl_coex_mode)
  return;

 coex_stat->gnt_workaround_state = coex_stat->wl_coex_mode;

 if ((coex_stat->kt_ver == 0 && coex->under_5g) || coex->freerun)
  rf_0x1 = 0x40021;
 else
  rf_0x1 = 0x40000;


 if (efuse->share_ant)
  rf_0x1 |= BIT(13);

 rtw_write_rf(rtwdev, RF_PATH_B, 0x1, 0xfffff, rf_0x1);
 rtw_write8_mask(rtwdev, 0x1c32, BIT(6), 1);
 rtw_write8_mask(rtwdev, 0x1c39, BIT(4), 0);
 rtw_write8_mask(rtwdev, 0x1c3b, BIT(4), 1);
 rtw_write8_mask(rtwdev, 0x4160, BIT(3), 1);




 if (coex_stat->wl_coex_mode == COEX_WLINK_5G ||
     coex->under_5g || !efuse->share_ant) {
  if (coex_stat->kt_ver >= 3) {
   rtw_write8_mask(rtwdev, 0x1860, BIT(3), 0);
   rtw_write8_mask(rtwdev, 0x1ca7, BIT(3), 1);
  } else {
   rtw_write8_mask(rtwdev, 0x1860, BIT(3), 1);
  }
 } else {

  rtw_write8_mask(rtwdev, 0x1860, BIT(3), 0);
  if (coex_stat->kt_ver >= 3)
   rtw_write8_mask(rtwdev, 0x1ca7, BIT(3), 0);
 }
}
