
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_dev {int dummy; } ;


 int BIT (int) ;
 int RF_PATH_A ;
 int RF_PATH_B ;
 int rtw8822c_dac_cal_backup_dck (struct rtw_dev*) ;
 int rtw8822c_dac_cal_backup_path (struct rtw_dev*,int ) ;
 int rtw_read32 (struct rtw_dev*,int) ;
 int rtw_write32 (struct rtw_dev*,int,int) ;
 int rtw_write32_clr (struct rtw_dev*,int,int ) ;
 int rtw_write32_mask (struct rtw_dev*,int,int,int) ;
 int rtw_write32_set (struct rtw_dev*,int,int ) ;

__attribute__((used)) static void rtw8822c_dac_cal_backup(struct rtw_dev *rtwdev)
{
 u32 temp[3];

 temp[0] = rtw_read32(rtwdev, 0x1860);
 temp[1] = rtw_read32(rtwdev, 0x4160);
 temp[2] = rtw_read32(rtwdev, 0x9b4);


 rtw_write32(rtwdev, 0x9b4, 0xdb66db00);


 rtw_write32_clr(rtwdev, 0x1830, BIT(30));
 rtw_write32_mask(rtwdev, 0x1860, 0xfc000000, 0x3c);
 rtw8822c_dac_cal_backup_path(rtwdev, RF_PATH_A);


 rtw_write32_clr(rtwdev, 0x4130, BIT(30));
 rtw_write32_mask(rtwdev, 0x4160, 0xfc000000, 0x3c);
 rtw8822c_dac_cal_backup_path(rtwdev, RF_PATH_B);

 rtw8822c_dac_cal_backup_dck(rtwdev);
 rtw_write32_set(rtwdev, 0x1830, BIT(30));
 rtw_write32_set(rtwdev, 0x4130, BIT(30));

 rtw_write32(rtwdev, 0x1860, temp[0]);
 rtw_write32(rtwdev, 0x4160, temp[1]);
 rtw_write32(rtwdev, 0x9b4, temp[2]);
}
