
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int dummy; } ;


 int BIT (int) ;
 int RF_T_METER ;
 int rtw_read_rf (struct rtw_dev*,int ,int ,int) ;
 int rtw_write_rf (struct rtw_dev*,int ,int ,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static u8 rtw8822c_dpk_thermal_read(struct rtw_dev *rtwdev, u8 path)
{
 rtw_write_rf(rtwdev, path, RF_T_METER, BIT(19), 0x1);
 rtw_write_rf(rtwdev, path, RF_T_METER, BIT(19), 0x0);
 rtw_write_rf(rtwdev, path, RF_T_METER, BIT(19), 0x1);
 udelay(15);

 return (u8)rtw_read_rf(rtwdev, path, RF_T_METER, 0x0007e);
}
