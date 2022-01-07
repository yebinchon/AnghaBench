
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct rtw_dev {int dummy; } ;


 int BIT_SUBPAGE ;
 int GENMASK (int,int) ;
 int REG_NCTL0 ;
 int REG_RXSRAM_CTL ;
 int REG_STAT_RPT ;
 scalar_t__ rtw_read32_mask (struct rtw_dev*,int ,int ) ;
 int rtw_write32_mask (struct rtw_dev*,int ,int,int) ;

__attribute__((used)) static u16 rtw8822c_dpk_dgain_read(struct rtw_dev *rtwdev, u8 path)
{
 u16 dgain;

 rtw_write32_mask(rtwdev, REG_NCTL0, BIT_SUBPAGE, 0xc);
 rtw_write32_mask(rtwdev, REG_RXSRAM_CTL, 0x00ff0000, 0x0);

 dgain = (u16)rtw_read32_mask(rtwdev, REG_STAT_RPT, GENMASK(27, 16));

 return dgain;
}
