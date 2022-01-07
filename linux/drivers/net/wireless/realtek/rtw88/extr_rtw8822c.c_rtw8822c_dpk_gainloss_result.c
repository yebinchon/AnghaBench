
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int dummy; } ;


 int BIT (int) ;
 int BIT_SUBPAGE ;
 int REG_NCTL0 ;
 int REG_RXSRAM_CTL ;
 int REG_STAT_RPT ;
 scalar_t__ rtw_read32_mask (struct rtw_dev*,int ,int) ;
 int rtw_write32 (struct rtw_dev*,int ,int) ;
 int rtw_write32_mask (struct rtw_dev*,int,int ,int) ;

__attribute__((used)) static u8 rtw8822c_dpk_gainloss_result(struct rtw_dev *rtwdev, u8 path)
{
 u8 result;

 rtw_write32_mask(rtwdev, REG_NCTL0, BIT_SUBPAGE, 0x8 | (path << 1));
 rtw_write32_mask(rtwdev, 0x1b48, BIT(14), 0x1);
 rtw_write32(rtwdev, REG_RXSRAM_CTL, 0x00060000);

 result = (u8)rtw_read32_mask(rtwdev, REG_STAT_RPT, 0x000000f0);

 rtw_write32_mask(rtwdev, 0x1b48, BIT(14), 0x0);

 return result;
}
