
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rtw_dev {int dummy; } ;


 int __ffs (int) ;
 int ltecoex_reg_write (struct rtw_dev*,int ,int) ;
 int rtw_coex_read_indirect_reg (struct rtw_dev*,int ) ;
 int rtw_err (struct rtw_dev*,char*) ;

void rtw_coex_write_indirect_reg(struct rtw_dev *rtwdev, u16 addr,
     u32 mask, u32 val)
{
 u32 shift = __ffs(mask);
 u32 tmp;

 tmp = rtw_coex_read_indirect_reg(rtwdev, addr);
 tmp = (tmp & (~mask)) | ((val << shift) & mask);

 if (!ltecoex_reg_write(rtwdev, addr, tmp))
  rtw_err(rtwdev, "failed to write indirect register\n");
}
