
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtw_dev {int dummy; } ;


 int ltecoex_read_reg (struct rtw_dev*,int ,int *) ;
 int rtw_err (struct rtw_dev*,char*) ;

u32 rtw_coex_read_indirect_reg(struct rtw_dev *rtwdev, u16 addr)
{
 u32 val;

 if (!ltecoex_read_reg(rtwdev, addr, &val)) {
  rtw_err(rtwdev, "failed to read indirect register\n");
  return 0;
 }

 return val;
}
