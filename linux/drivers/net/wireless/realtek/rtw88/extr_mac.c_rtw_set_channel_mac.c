
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtw_dev {int dummy; } ;


 int BIT_CHECK_CCK_EN ;
 int BIT_MAC_CLK_SEL ;
 int BIT_RFMOD ;
 int BIT_RFMOD_40M ;
 int BIT_RFMOD_80M ;
 int BIT_SHIFT_MAC_CLK_SEL ;
 int BIT_TXSC_20M (int) ;
 int BIT_TXSC_40M (int) ;
 int MAC_CLK_HW_DEF_80M ;
 int MAC_CLK_SPEED ;
 int REG_AFE_CTRL1 ;
 int REG_CCK_CHECK ;
 int REG_DATA_SC ;
 int REG_USTIME_EDCA ;
 int REG_USTIME_TSF ;
 int REG_WMAC_TRXPTCL_CTL ;



 int rtw_read32 (struct rtw_dev*,int ) ;
 int rtw_read8 (struct rtw_dev*,int ) ;
 int rtw_write32 (struct rtw_dev*,int ,int) ;
 int rtw_write8 (struct rtw_dev*,int ,int) ;

void rtw_set_channel_mac(struct rtw_dev *rtwdev, u8 channel, u8 bw,
    u8 primary_ch_idx)
{
 u8 txsc40 = 0, txsc20 = 0;
 u32 value32;
 u8 value8;

 txsc20 = primary_ch_idx;
 if (txsc20 == 1 || txsc20 == 3)
  txsc40 = 9;
 else
  txsc40 = 10;
 rtw_write8(rtwdev, REG_DATA_SC,
     BIT_TXSC_20M(txsc20) | BIT_TXSC_40M(txsc40));

 value32 = rtw_read32(rtwdev, REG_WMAC_TRXPTCL_CTL);
 value32 &= ~BIT_RFMOD;
 switch (bw) {
 case 128:
  value32 |= BIT_RFMOD_80M;
  break;
 case 129:
  value32 |= BIT_RFMOD_40M;
  break;
 case 130:
 default:
  break;
 }
 rtw_write32(rtwdev, REG_WMAC_TRXPTCL_CTL, value32);

 value32 = rtw_read32(rtwdev, REG_AFE_CTRL1) & ~(BIT_MAC_CLK_SEL);
 value32 |= (MAC_CLK_HW_DEF_80M << BIT_SHIFT_MAC_CLK_SEL);
 rtw_write32(rtwdev, REG_AFE_CTRL1, value32);

 rtw_write8(rtwdev, REG_USTIME_TSF, MAC_CLK_SPEED);
 rtw_write8(rtwdev, REG_USTIME_EDCA, MAC_CLK_SPEED);

 value8 = rtw_read8(rtwdev, REG_CCK_CHECK);
 value8 = value8 & ~BIT_CHECK_CCK_EN;
 if (channel > 35)
  value8 |= BIT_CHECK_CCK_EN;
 rtw_write8(rtwdev, REG_CCK_CHECK, value8);
}
