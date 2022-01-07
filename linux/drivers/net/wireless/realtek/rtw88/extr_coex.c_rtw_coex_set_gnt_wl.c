
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_dev {int dummy; } ;


 int rtw_coex_write_indirect_reg (struct rtw_dev*,int,int,int ) ;

__attribute__((used)) static void rtw_coex_set_gnt_wl(struct rtw_dev *rtwdev, u8 state)
{
 rtw_coex_write_indirect_reg(rtwdev, 0x38, 0x3000, state);
 rtw_coex_write_indirect_reg(rtwdev, 0x38, 0x0300, state);
}
