
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtw_rfe_def {int txpwr_lmt_tbl; int phy_pg_tbl; } ;
struct TYPE_2__ {int rfe_option; } ;
struct rtw_dev {TYPE_1__ efuse; } ;


 int ENODEV ;
 int rtw_err (struct rtw_dev*,char*,int ) ;
 struct rtw_rfe_def* rtw_get_rfe_def (struct rtw_dev*) ;

__attribute__((used)) static inline int rtw_check_supported_rfe(struct rtw_dev *rtwdev)
{
 const struct rtw_rfe_def *rfe_def = rtw_get_rfe_def(rtwdev);

 if (!rfe_def || !rfe_def->phy_pg_tbl || !rfe_def->txpwr_lmt_tbl) {
  rtw_err(rtwdev, "rfe %d isn't supported\n",
   rtwdev->efuse.rfe_option);
  return -ENODEV;
 }

 return 0;
}
