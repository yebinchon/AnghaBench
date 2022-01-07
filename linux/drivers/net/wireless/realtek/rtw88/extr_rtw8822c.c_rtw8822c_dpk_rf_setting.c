
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {scalar_t__ dpk_band; scalar_t__ dpk_bw; } ;
struct TYPE_4__ {TYPE_1__ dpk_info; } ;
struct rtw_dev {TYPE_2__ dm_info; } ;


 int BIT (int) ;
 int BIT_BW_RXBB ;
 int BIT_BW_TXBB ;
 int BIT_DE_PWR_TRIM ;
 int BIT_DE_TRXBW ;
 int BIT_DE_TX_GAIN ;
 int BIT_LB_ATT ;
 int BIT_LB_SW ;
 int BIT_RXAGC ;
 int BIT_RXA_MIX_GAIN ;
 int BIT_RXG_GAIN ;
 int BIT_TXA_LB_ATT ;
 int BIT_TX_OFFSET_VAL ;
 scalar_t__ DPK_CHANNEL_WIDTH_80 ;
 int RFREG_MASK ;
 int RF_BW_TRXBB ;
 int RF_DEBUG ;
 int RF_EXT_TIA_BW ;
 int RF_MODE_TRXAGC ;
 int RF_RXA_MIX_GAIN ;
 int RF_RXG_GAIN ;
 int RF_TXA_LB_SW ;
 int RF_TX_GAIN ;
 int RF_TX_GAIN_OFFSET ;
 scalar_t__ RTW_BAND_2G ;
 int rtw_read_rf (struct rtw_dev*,int ,int ,int ) ;
 int rtw_write_rf (struct rtw_dev*,int ,int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static u32 rtw8822c_dpk_rf_setting(struct rtw_dev *rtwdev, u8 path)
{
 u32 ori_txbb;

 rtw_write_rf(rtwdev, path, RF_MODE_TRXAGC, RFREG_MASK, 0x50017);
 ori_txbb = rtw_read_rf(rtwdev, path, RF_TX_GAIN, RFREG_MASK);

 rtw_write_rf(rtwdev, path, RF_DEBUG, BIT_DE_TX_GAIN, 0x1);
 rtw_write_rf(rtwdev, path, RF_DEBUG, BIT_DE_PWR_TRIM, 0x1);
 rtw_write_rf(rtwdev, path, RF_TX_GAIN_OFFSET, BIT_TX_OFFSET_VAL, 0x0);
 rtw_write_rf(rtwdev, path, RF_TX_GAIN, RFREG_MASK, ori_txbb);

 if (rtwdev->dm_info.dpk_info.dpk_band == RTW_BAND_2G) {
  rtw_write_rf(rtwdev, path, RF_TX_GAIN_OFFSET, BIT_LB_ATT, 0x1);
  rtw_write_rf(rtwdev, path, RF_RXG_GAIN, BIT_RXG_GAIN, 0x0);
 } else {
  rtw_write_rf(rtwdev, path, RF_TXA_LB_SW, BIT_TXA_LB_ATT, 0x0);
  rtw_write_rf(rtwdev, path, RF_TXA_LB_SW, BIT_LB_ATT, 0x6);
  rtw_write_rf(rtwdev, path, RF_TXA_LB_SW, BIT_LB_SW, 0x1);
  rtw_write_rf(rtwdev, path, RF_RXA_MIX_GAIN, BIT_RXA_MIX_GAIN, 0);
 }

 rtw_write_rf(rtwdev, path, RF_MODE_TRXAGC, BIT_RXAGC, 0xf);
 rtw_write_rf(rtwdev, path, RF_DEBUG, BIT_DE_TRXBW, 0x1);
 rtw_write_rf(rtwdev, path, RF_BW_TRXBB, BIT_BW_RXBB, 0x0);

 if (rtwdev->dm_info.dpk_info.dpk_bw == DPK_CHANNEL_WIDTH_80)
  rtw_write_rf(rtwdev, path, RF_BW_TRXBB, BIT_BW_TXBB, 0x2);
 else
  rtw_write_rf(rtwdev, path, RF_BW_TRXBB, BIT_BW_TXBB, 0x1);

 rtw_write_rf(rtwdev, path, RF_EXT_TIA_BW, BIT(1), 0x1);

 usleep_range(100, 110);

 return ori_txbb & 0x1f;
}
