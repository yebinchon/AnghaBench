
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_coex_stat {int wl_tx_limit_en; int wl_ampdu_limit_en; int darfrc; int darfrch; int retry_limit; int ampdu_max_time; } ;
struct rtw_coex {struct rtw_coex_stat stat; } ;
struct rtw_dev {struct rtw_coex coex; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {int scbd_support; } ;


 int BIT_EN_GNT_BT_AWAKE ;
 int REG_AMPDU_MAX_TIME_V1 ;
 int REG_DARFRC ;
 int REG_DARFRCH ;
 int REG_LIFETIME_EN ;
 int REG_RETRY_LIMIT ;
 int REG_TX_HANG_CTRL ;
 int rtw_read16 (struct rtw_dev*,int ) ;
 void* rtw_read32 (struct rtw_dev*,int ) ;
 int rtw_read8 (struct rtw_dev*,int ) ;
 int rtw_write16 (struct rtw_dev*,int ,int) ;
 int rtw_write32 (struct rtw_dev*,int ,int) ;
 int rtw_write8 (struct rtw_dev*,int ,int) ;
 int rtw_write8_clr (struct rtw_dev*,int ,int) ;
 int rtw_write8_set (struct rtw_dev*,int ,int) ;

__attribute__((used)) static void rtw_coex_limited_tx(struct rtw_dev *rtwdev,
    bool tx_limit_en, bool ampdu_limit_en)
{
 struct rtw_chip_info *chip = rtwdev->chip;
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_stat *coex_stat = &coex->stat;
 bool wifi_under_b_mode = 0;

 if (!chip->scbd_support)
  return;


 if (coex_stat->wl_tx_limit_en == tx_limit_en &&
     coex_stat->wl_ampdu_limit_en == ampdu_limit_en)
  return;

 if (!coex_stat->wl_tx_limit_en) {
  coex_stat->darfrc = rtw_read32(rtwdev, REG_DARFRC);
  coex_stat->darfrch = rtw_read32(rtwdev, REG_DARFRCH);
  coex_stat->retry_limit = rtw_read16(rtwdev, REG_RETRY_LIMIT);
 }

 if (!coex_stat->wl_ampdu_limit_en)
  coex_stat->ampdu_max_time =
    rtw_read8(rtwdev, REG_AMPDU_MAX_TIME_V1);

 coex_stat->wl_tx_limit_en = tx_limit_en;
 coex_stat->wl_ampdu_limit_en = ampdu_limit_en;

 if (tx_limit_en) {



  rtw_write8_set(rtwdev, REG_TX_HANG_CTRL, BIT_EN_GNT_BT_AWAKE);




  rtw_write8_set(rtwdev, REG_LIFETIME_EN, 0xf);
  rtw_write16(rtwdev, REG_RETRY_LIMIT, 0x0808);


  if (wifi_under_b_mode) {
   rtw_write32(rtwdev, REG_DARFRC, 0x1000000);
   rtw_write32(rtwdev, REG_DARFRCH, 0x1010101);
  } else {
   rtw_write32(rtwdev, REG_DARFRC, 0x1000000);
   rtw_write32(rtwdev, REG_DARFRCH, 0x4030201);
  }
 } else {
  rtw_write8_clr(rtwdev, REG_TX_HANG_CTRL, BIT_EN_GNT_BT_AWAKE);
  rtw_write8_clr(rtwdev, REG_LIFETIME_EN, 0xf);

  rtw_write16(rtwdev, REG_RETRY_LIMIT, coex_stat->retry_limit);
  rtw_write32(rtwdev, REG_DARFRC, coex_stat->darfrc);
  rtw_write32(rtwdev, REG_DARFRCH, coex_stat->darfrch);
 }

 if (ampdu_limit_en)
  rtw_write8(rtwdev, REG_AMPDU_MAX_TIME_V1, 0x20);
 else
  rtw_write8(rtwdev, REG_AMPDU_MAX_TIME_V1,
      coex_stat->ampdu_max_time);
}
