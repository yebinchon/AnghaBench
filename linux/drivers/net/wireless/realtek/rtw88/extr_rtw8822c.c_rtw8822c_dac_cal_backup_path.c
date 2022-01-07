
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtw_dev {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 int rtw8822c_dac_cal_backup_vec (struct rtw_dev*,int,int,int,int) ;
 int rtw8822c_get_path_read_addr (int) ;
 int rtw8822c_get_path_write_addr (int) ;

__attribute__((used)) static void rtw8822c_dac_cal_backup_path(struct rtw_dev *rtwdev, u8 path)
{
 u32 w_off = 0x1c;
 u32 r_off = 0x2c;
 u32 w_addr, r_addr;

 if (WARN_ON(path >= 2))
  return;


 w_addr = rtw8822c_get_path_write_addr(path) + 0xb0;
 r_addr = rtw8822c_get_path_read_addr(path) + 0x10;
 rtw8822c_dac_cal_backup_vec(rtwdev, path, 0, w_addr, r_addr);


 w_addr = rtw8822c_get_path_write_addr(path) + 0xb0 + w_off;
 r_addr = rtw8822c_get_path_read_addr(path) + 0x10 + r_off;
 rtw8822c_dac_cal_backup_vec(rtwdev, path, 1, w_addr, r_addr);
}
