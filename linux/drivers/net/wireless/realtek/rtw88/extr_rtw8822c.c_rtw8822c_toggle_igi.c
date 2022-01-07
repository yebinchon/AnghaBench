
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rtw_dev {int dummy; } ;


 int REG_RXIGI ;
 scalar_t__ rtw_read32_mask (struct rtw_dev*,int ,int) ;
 int rtw_write32_mask (struct rtw_dev*,int ,int,scalar_t__) ;

__attribute__((used)) static void rtw8822c_toggle_igi(struct rtw_dev *rtwdev)
{
 u32 igi;

 igi = rtw_read32_mask(rtwdev, REG_RXIGI, 0x7f);
 rtw_write32_mask(rtwdev, REG_RXIGI, 0x7f, igi - 2);
 rtw_write32_mask(rtwdev, REG_RXIGI, 0x7f00, igi - 2);
 rtw_write32_mask(rtwdev, REG_RXIGI, 0x7f, igi);
 rtw_write32_mask(rtwdev, REG_RXIGI, 0x7f00, igi);
}
