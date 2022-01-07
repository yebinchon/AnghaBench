
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int dummy; } ;


 int BIT_LDOE25_PON ;
 int REG_ANAPARLDO_POW_MAC ;
 int rtw_read8 (struct rtw_dev*,int ) ;
 int rtw_write8 (struct rtw_dev*,int ,int) ;

__attribute__((used)) static void rtw8822c_cfg_ldo25(struct rtw_dev *rtwdev, bool enable)
{
 u8 ldo_pwr;

 ldo_pwr = rtw_read8(rtwdev, REG_ANAPARLDO_POW_MAC);
 ldo_pwr = enable ? ldo_pwr | BIT_LDOE25_PON : ldo_pwr & ~BIT_LDOE25_PON;
 rtw_write8(rtwdev, REG_ANAPARLDO_POW_MAC, ldo_pwr);
}
