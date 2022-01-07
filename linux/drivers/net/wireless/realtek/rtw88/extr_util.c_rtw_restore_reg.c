
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtw_dev {int dummy; } ;
struct rtw_backup_info {int len; int reg; int val; } ;


 int rtw_write16 (struct rtw_dev*,int,int ) ;
 int rtw_write32 (struct rtw_dev*,int,int) ;
 int rtw_write8 (struct rtw_dev*,int,int) ;

void rtw_restore_reg(struct rtw_dev *rtwdev,
       struct rtw_backup_info *bckp, u32 num)
{
 u8 len;
 u32 reg;
 u32 val;
 int i;

 for (i = 0; i < num; i++, bckp++) {
  len = bckp->len;
  reg = bckp->reg;
  val = bckp->val;

  switch (len) {
  case 1:
   rtw_write8(rtwdev, reg, (u8)val);
   break;
  case 2:
   rtw_write16(rtwdev, reg, (u16)val);
   break;
  case 4:
   rtw_write32(rtwdev, reg, (u32)val);
   break;
  default:
   break;
  }
 }
}
