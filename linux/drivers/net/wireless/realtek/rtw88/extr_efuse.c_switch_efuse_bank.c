
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int BIT_MASK_EFUSE_BANK_SEL ;
 int REG_LDO_EFUSE_CTRL ;
 int RTW_EFUSE_BANK_WIFI ;
 int rtw_write32_mask (struct rtw_dev*,int ,int ,int ) ;

__attribute__((used)) static void switch_efuse_bank(struct rtw_dev *rtwdev)
{
 rtw_write32_mask(rtwdev, REG_LDO_EFUSE_CTRL, BIT_MASK_EFUSE_BANK_SEL,
    RTW_EFUSE_BANK_WIFI);
}
