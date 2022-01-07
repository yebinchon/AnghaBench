
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_dev {int dummy; } ;


 int BIT (int) ;
 int REG_ACBB0 ;
 int REG_ACBBRXFIR ;
 int REG_TXDFIR ;
 scalar_t__ RTW_CHANNEL_WIDTH_40 ;
 scalar_t__ RTW_CHANNEL_WIDTH_80 ;
 int rtw_write32_mask (struct rtw_dev*,int ,int,int) ;
 int rtw_write32s_mask (struct rtw_dev*,int ,int,int) ;

__attribute__((used)) static void rtw8822b_set_channel_rxdfir(struct rtw_dev *rtwdev, u8 bw)
{
 if (bw == RTW_CHANNEL_WIDTH_40) {

  rtw_write32_mask(rtwdev, REG_ACBB0, BIT(29) | BIT(28), 0x1);
  rtw_write32_mask(rtwdev, REG_ACBBRXFIR, BIT(29) | BIT(28), 0x0);
  rtw_write32s_mask(rtwdev, REG_TXDFIR, BIT(31), 0x0);
 } else if (bw == RTW_CHANNEL_WIDTH_80) {

  rtw_write32_mask(rtwdev, REG_ACBB0, BIT(29) | BIT(28), 0x2);
  rtw_write32_mask(rtwdev, REG_ACBBRXFIR, BIT(29) | BIT(28), 0x1);
  rtw_write32s_mask(rtwdev, REG_TXDFIR, BIT(31), 0x0);
 } else {

  rtw_write32_mask(rtwdev, REG_ACBB0, BIT(29) | BIT(28), 0x2);
  rtw_write32_mask(rtwdev, REG_ACBBRXFIR, BIT(29) | BIT(28), 0x2);
  rtw_write32s_mask(rtwdev, REG_TXDFIR, BIT(31), 0x1);
 }
}
