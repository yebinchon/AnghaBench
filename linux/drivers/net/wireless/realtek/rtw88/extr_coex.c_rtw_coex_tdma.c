
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtw_efuse {scalar_t__ share_ant; } ;
struct rtw_coex_dm {int cur_ps_tdma_on; int cur_ps_tdma; } ;
struct rtw_coex {struct rtw_coex_dm dm; } ;
struct rtw_dev {struct rtw_efuse efuse; struct rtw_chip_info* chip; struct rtw_coex coex; } ;
struct rtw_chip_info {int tdma_sant_num; int tdma_nsant_num; TYPE_2__* tdma_nsant; TYPE_1__* tdma_sant; } ;
struct TYPE_4__ {int * para; } ;
struct TYPE_3__ {int * para; } ;


 int BIT_EN_BCN_FUNCTION ;
 int COEX_SCBD_TDMA ;
 int REG_BCN_CTRL ;
 int RTW_DBG_COEX ;
 int TDMA_4SLOT ;
 int rtw_coex_set_tdma (struct rtw_dev*,int ,int ,int ,int ,int ) ;
 int rtw_coex_tdma_timer_base (struct rtw_dev*,int) ;
 int rtw_coex_write_scbd (struct rtw_dev*,int ,int) ;
 int rtw_dbg (struct rtw_dev*,int ,char*,int) ;
 int rtw_write8_set (struct rtw_dev*,int ,int ) ;

__attribute__((used)) static void rtw_coex_tdma(struct rtw_dev *rtwdev, bool force, u32 tcase)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_dm *coex_dm = &coex->dm;
 struct rtw_chip_info *chip = rtwdev->chip;
 struct rtw_efuse *efuse = &rtwdev->efuse;
 u8 n, type;
 bool turn_on;

 if (tcase & TDMA_4SLOT)
  rtw_coex_tdma_timer_base(rtwdev, 3);
 else
  rtw_coex_tdma_timer_base(rtwdev, 0);

 type = (u8)(tcase & 0xff);

 turn_on = (type == 0 || type == 100) ? 0 : 1;

 if (!force) {
  if (turn_on == coex_dm->cur_ps_tdma_on &&
      type == coex_dm->cur_ps_tdma) {
   return;
  }
 }

 if (turn_on) {

  rtw_write8_set(rtwdev, REG_BCN_CTRL, BIT_EN_BCN_FUNCTION);
  rtw_coex_write_scbd(rtwdev, COEX_SCBD_TDMA, 1);
 } else {
  rtw_coex_write_scbd(rtwdev, COEX_SCBD_TDMA, 0);
 }

 if (efuse->share_ant) {
  if (type < chip->tdma_sant_num)
   rtw_coex_set_tdma(rtwdev,
       chip->tdma_sant[type].para[0],
       chip->tdma_sant[type].para[1],
       chip->tdma_sant[type].para[2],
       chip->tdma_sant[type].para[3],
       chip->tdma_sant[type].para[4]);
 } else {
  n = type - 100;
  if (n < chip->tdma_nsant_num)
   rtw_coex_set_tdma(rtwdev,
       chip->tdma_nsant[n].para[0],
       chip->tdma_nsant[n].para[1],
       chip->tdma_nsant[n].para[2],
       chip->tdma_nsant[n].para[3],
       chip->tdma_nsant[n].para[4]);
 }


 coex_dm->cur_ps_tdma_on = turn_on;
 coex_dm->cur_ps_tdma = type;

 rtw_dbg(rtwdev, RTW_DBG_COEX, "coex: coex tdma type (%d)\n", type);
}
