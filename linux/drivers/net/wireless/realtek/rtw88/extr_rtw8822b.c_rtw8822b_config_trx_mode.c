
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtw_efuse {size_t rfe_option; } ;
struct TYPE_2__ {int current_channel; } ;
struct rtw_dev {scalar_t__ mp_mode; TYPE_1__ hal; struct rtw_efuse efuse; } ;
struct rtw8822b_rfe_info {int (* rtw_set_channel_rfe ) (struct rtw_dev*,int) ;} ;


 size_t ARRAY_SIZE (struct rtw8822b_rfe_info*) ;
 int BB_PATH_A ;
 int BB_PATH_B ;
 int BIT (int) ;
 int MASKBYTE0 ;
 int MASKLWORD ;
 int REG_ADCINI ;
 int REG_AGCTR_A ;
 int REG_AGCTR_B ;
 int REG_ANTWT ;
 int REG_CDDTXP ;
 int REG_HTSTFWT ;
 int REG_MRC ;
 int REG_RXDESC ;
 int REG_RXPSEL ;
 int REG_TXPSEL ;
 int REG_TXPSEL1 ;
 int RFREG_MASK ;
 int RF_LUTWA ;
 int RF_LUTWD0 ;
 int RF_LUTWD1 ;
 int RF_LUTWE ;
 int RF_PATH_A ;
 int RTW_CHANNEL_WIDTH_20 ;
 scalar_t__ WARN (int,char*,...) ;
 struct rtw8822b_rfe_info* rtw8822b_rfe_info ;
 int rtw8822b_set_channel_cca (struct rtw_dev*,int,int ,struct rtw8822b_rfe_info const*) ;
 int rtw8822b_toggle_igi (struct rtw_dev*) ;
 int rtw_read_rf (struct rtw_dev*,int ,int,int ) ;
 int rtw_write32_mask (struct rtw_dev*,int ,int,int) ;
 int rtw_write_rf (struct rtw_dev*,int ,int ,int ,int) ;
 int stub1 (struct rtw_dev*,int) ;
 int udelay (int) ;

__attribute__((used)) static void rtw8822b_config_trx_mode(struct rtw_dev *rtwdev, u8 tx_path,
         u8 rx_path, bool is_tx2_path)
{
 struct rtw_efuse *efuse = &rtwdev->efuse;
 const struct rtw8822b_rfe_info *rfe_info;
 u8 ch = rtwdev->hal.current_channel;
 u8 tx_path_sel, rx_path_sel;
 int counter;

 if (WARN(efuse->rfe_option >= ARRAY_SIZE(rtw8822b_rfe_info),
   "rfe_option %d is out of boundary\n", efuse->rfe_option))
  return;

 rfe_info = &rtw8822b_rfe_info[efuse->rfe_option];

 if ((tx_path | rx_path) & BB_PATH_A)
  rtw_write32_mask(rtwdev, REG_AGCTR_A, MASKLWORD, 0x3231);
 else
  rtw_write32_mask(rtwdev, REG_AGCTR_A, MASKLWORD, 0x1111);

 if ((tx_path | rx_path) & BB_PATH_B)
  rtw_write32_mask(rtwdev, REG_AGCTR_B, MASKLWORD, 0x3231);
 else
  rtw_write32_mask(rtwdev, REG_AGCTR_B, MASKLWORD, 0x1111);

 rtw_write32_mask(rtwdev, REG_CDDTXP, (BIT(19) | BIT(18)), 0x3);
 rtw_write32_mask(rtwdev, REG_TXPSEL, (BIT(29) | BIT(28)), 0x1);
 rtw_write32_mask(rtwdev, REG_TXPSEL, BIT(30), 0x1);

 if (tx_path & BB_PATH_A) {
  rtw_write32_mask(rtwdev, REG_CDDTXP, 0xfff00000, 0x001);
  rtw_write32_mask(rtwdev, REG_ADCINI, 0xf0000000, 0x8);
 } else if (tx_path & BB_PATH_B) {
  rtw_write32_mask(rtwdev, REG_CDDTXP, 0xfff00000, 0x002);
  rtw_write32_mask(rtwdev, REG_ADCINI, 0xf0000000, 0x4);
 }

 if (tx_path == BB_PATH_A || tx_path == BB_PATH_B)
  rtw_write32_mask(rtwdev, REG_TXPSEL1, 0xfff0, 0x01);
 else
  rtw_write32_mask(rtwdev, REG_TXPSEL1, 0xfff0, 0x43);

 tx_path_sel = (tx_path << 4) | tx_path;
 rtw_write32_mask(rtwdev, REG_TXPSEL, MASKBYTE0, tx_path_sel);

 if (tx_path != BB_PATH_A && tx_path != BB_PATH_B) {
  if (is_tx2_path || rtwdev->mp_mode) {
   rtw_write32_mask(rtwdev, REG_CDDTXP, 0xfff00000, 0x043);
   rtw_write32_mask(rtwdev, REG_ADCINI, 0xf0000000, 0xc);
  }
 }

 rtw_write32_mask(rtwdev, REG_RXDESC, BIT(22), 0x0);
 rtw_write32_mask(rtwdev, REG_RXDESC, BIT(18), 0x0);

 if (rx_path & BB_PATH_A)
  rtw_write32_mask(rtwdev, REG_ADCINI, 0x0f000000, 0x0);
 else if (rx_path & BB_PATH_B)
  rtw_write32_mask(rtwdev, REG_ADCINI, 0x0f000000, 0x5);

 rx_path_sel = (rx_path << 4) | rx_path;
 rtw_write32_mask(rtwdev, REG_RXPSEL, MASKBYTE0, rx_path_sel);

 if (rx_path == BB_PATH_A || rx_path == BB_PATH_B) {
  rtw_write32_mask(rtwdev, REG_ANTWT, BIT(16), 0x0);
  rtw_write32_mask(rtwdev, REG_HTSTFWT, BIT(28), 0x0);
  rtw_write32_mask(rtwdev, REG_MRC, BIT(23), 0x0);
 } else {
  rtw_write32_mask(rtwdev, REG_ANTWT, BIT(16), 0x1);
  rtw_write32_mask(rtwdev, REG_HTSTFWT, BIT(28), 0x1);
  rtw_write32_mask(rtwdev, REG_MRC, BIT(23), 0x1);
 }

 for (counter = 100; counter > 0; counter--) {
  u32 rf_reg33;

  rtw_write_rf(rtwdev, RF_PATH_A, RF_LUTWE, RFREG_MASK, 0x80000);
  rtw_write_rf(rtwdev, RF_PATH_A, RF_LUTWA, RFREG_MASK, 0x00001);

  udelay(2);
  rf_reg33 = rtw_read_rf(rtwdev, RF_PATH_A, 0x33, RFREG_MASK);

  if (rf_reg33 == 0x00001)
   break;
 }

 if (WARN(counter <= 0, "write RF mode table fail\n"))
  return;

 rtw_write_rf(rtwdev, RF_PATH_A, RF_LUTWE, RFREG_MASK, 0x80000);
 rtw_write_rf(rtwdev, RF_PATH_A, RF_LUTWA, RFREG_MASK, 0x00001);
 rtw_write_rf(rtwdev, RF_PATH_A, RF_LUTWD1, RFREG_MASK, 0x00034);
 rtw_write_rf(rtwdev, RF_PATH_A, RF_LUTWD0, RFREG_MASK, 0x4080c);
 rtw_write_rf(rtwdev, RF_PATH_A, RF_LUTWE, RFREG_MASK, 0x00000);
 rtw_write_rf(rtwdev, RF_PATH_A, RF_LUTWE, RFREG_MASK, 0x00000);

 rtw8822b_toggle_igi(rtwdev);
 rtw8822b_set_channel_cca(rtwdev, 1, RTW_CHANNEL_WIDTH_20, rfe_info);
 (*rfe_info->rtw_set_channel_rfe)(rtwdev, ch);
}
