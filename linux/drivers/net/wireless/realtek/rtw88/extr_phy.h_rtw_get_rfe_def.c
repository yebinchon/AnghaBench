
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_rfe_def {int dummy; } ;
struct rtw_efuse {scalar_t__ rfe_option; } ;
struct rtw_dev {struct rtw_efuse efuse; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {scalar_t__ rfe_defs_size; struct rtw_rfe_def* rfe_defs; } ;


 int RTW_DBG_PHY ;
 int rtw_dbg (struct rtw_dev*,int ,char*,size_t) ;

__attribute__((used)) static inline const struct rtw_rfe_def *rtw_get_rfe_def(struct rtw_dev *rtwdev)
{
 struct rtw_chip_info *chip = rtwdev->chip;
 struct rtw_efuse *efuse = &rtwdev->efuse;
 const struct rtw_rfe_def *rfe_def = ((void*)0);

 if (chip->rfe_defs_size == 0)
  return ((void*)0);

 if (efuse->rfe_option < chip->rfe_defs_size)
  rfe_def = &chip->rfe_defs[efuse->rfe_option];

 rtw_dbg(rtwdev, RTW_DBG_PHY, "use rfe_def[%d]\n", efuse->rfe_option);
 return rfe_def;
}
