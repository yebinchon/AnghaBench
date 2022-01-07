
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtw_dev {int dummy; } ;


 int LTECOEX_ACCESS_CTRL ;
 int LTECOEX_READY ;
 int LTECOEX_READ_DATA ;
 int check_hw_ready (struct rtw_dev*,int ,int ,int) ;
 int rtw_read32 (struct rtw_dev*,int ) ;
 int rtw_write32 (struct rtw_dev*,int ,int) ;

bool ltecoex_read_reg(struct rtw_dev *rtwdev, u16 offset, u32 *val)
{
 if (!check_hw_ready(rtwdev, LTECOEX_ACCESS_CTRL, LTECOEX_READY, 1))
  return 0;

 rtw_write32(rtwdev, LTECOEX_ACCESS_CTRL, 0x800F0000 | offset);
 *val = rtw_read32(rtwdev, LTECOEX_READ_DATA);

 return 1;
}
