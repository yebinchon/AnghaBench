
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct rtw_dev {int dummy; } ;
struct rtw_backup_info {int len; size_t reg; int val; } ;


 int rtw_read32 (struct rtw_dev*,size_t) ;

__attribute__((used)) static void
rtw8822c_dpk_backup_registers(struct rtw_dev *rtwdev, u32 *reg,
         u32 reg_num, struct rtw_backup_info *bckp)
{
 u32 i;

 for (i = 0; i < reg_num; i++) {
  bckp[i].len = 4;
  bckp[i].reg = reg[i];
  bckp[i].val = rtw_read32(rtwdev, reg[i]);
 }
}
