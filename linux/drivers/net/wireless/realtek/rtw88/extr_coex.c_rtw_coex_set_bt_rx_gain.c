
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_coex_dm {scalar_t__ cur_bt_lna_lvl; } ;
struct rtw_coex {struct rtw_coex_dm dm; } ;
struct rtw_dev {struct rtw_coex coex; } ;


 int COEX_SCBD_RXGAIN ;
 int rtw_coex_set_lna_constrain_level (struct rtw_dev*,scalar_t__) ;
 int rtw_coex_write_scbd (struct rtw_dev*,int ,int) ;

__attribute__((used)) static void rtw_coex_set_bt_rx_gain(struct rtw_dev *rtwdev, u8 bt_lna_lvl)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_dm *coex_dm = &coex->dm;

 if (bt_lna_lvl == coex_dm->cur_bt_lna_lvl)
  return;

 coex_dm->cur_bt_lna_lvl = bt_lna_lvl;


 if (bt_lna_lvl < 7) {
  rtw_coex_set_lna_constrain_level(rtwdev, bt_lna_lvl);
  rtw_coex_write_scbd(rtwdev, COEX_SCBD_RXGAIN, 1);
 } else {
  rtw_coex_write_scbd(rtwdev, COEX_SCBD_RXGAIN, 0);
 }
}
