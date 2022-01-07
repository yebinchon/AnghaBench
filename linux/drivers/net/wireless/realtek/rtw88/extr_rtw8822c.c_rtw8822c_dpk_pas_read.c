
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtw_dev {int dummy; } ;


 int BIT (int) ;
 int MASKHWORD ;
 int MASKLWORD ;
 int REG_NCTL0 ;
 int REG_RXSRAM_CTL ;
 int REG_STAT_RPT ;
 int rtw_read32_mask (struct rtw_dev*,int ,int ) ;
 int rtw_write32 (struct rtw_dev*,int,int) ;
 int rtw_write32_mask (struct rtw_dev*,int,int,int) ;

__attribute__((used)) static u32 rtw8822c_dpk_pas_read(struct rtw_dev *rtwdev, u8 path)
{
 u32 i_val, q_val;

 rtw_write32(rtwdev, REG_NCTL0, 0x8 | (path << 1));
 rtw_write32_mask(rtwdev, 0x1b48, BIT(14), 0x0);
 rtw_write32(rtwdev, REG_RXSRAM_CTL, 0x00060001);
 rtw_write32(rtwdev, 0x1b4c, 0x00000000);
 rtw_write32(rtwdev, 0x1b4c, 0x00080000);

 q_val = rtw_read32_mask(rtwdev, REG_STAT_RPT, MASKHWORD);
 i_val = rtw_read32_mask(rtwdev, REG_STAT_RPT, MASKLWORD);

 if (i_val & BIT(15))
  i_val = 0x10000 - i_val;
 if (q_val & BIT(15))
  q_val = 0x10000 - q_val;

 rtw_write32(rtwdev, 0x1b4c, 0x00000000);

 return i_val * i_val + q_val * q_val;
}
