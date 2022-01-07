
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_dev {int dummy; } ;
struct rtw_backup_info {int dummy; } ;


 int BIT_DPD_CLK ;
 int BIT_SUBPAGE ;
 int REG_NCTL0 ;
 int REG_RXSRAM_CTL ;
 int rtw_restore_reg (struct rtw_dev*,struct rtw_backup_info*,int ) ;
 int rtw_write32_mask (struct rtw_dev*,int ,int ,int) ;

__attribute__((used)) static void
rtw8822c_dpk_restore_registers(struct rtw_dev *rtwdev, u32 reg_num,
          struct rtw_backup_info *bckp)
{
 rtw_restore_reg(rtwdev, bckp, reg_num);
 rtw_write32_mask(rtwdev, REG_NCTL0, BIT_SUBPAGE, 0xc);
 rtw_write32_mask(rtwdev, REG_RXSRAM_CTL, BIT_DPD_CLK, 0x4);
}
