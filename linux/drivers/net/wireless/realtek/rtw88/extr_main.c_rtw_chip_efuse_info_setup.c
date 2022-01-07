
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_efuse {int crystal_cap; int pa_type_2g; int pa_type_5g; int lna_type_2g; int lna_type_5g; int channel_plan; int rf_board_option; int bt_setting; int share_ant; int regd; int btcoex; int ext_pa_2g; int ext_lna_2g; int ext_pa_5g; } ;
struct rtw_dev {int mutex; struct rtw_efuse efuse; } ;


 int BIT (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtw_check_supported_rfe (struct rtw_dev*) ;
 int rtw_chip_efuse_disable (struct rtw_dev*) ;
 int rtw_chip_efuse_enable (struct rtw_dev*) ;
 int rtw_dump_hw_feature (struct rtw_dev*) ;
 int rtw_parse_efuse_map (struct rtw_dev*) ;

__attribute__((used)) static int rtw_chip_efuse_info_setup(struct rtw_dev *rtwdev)
{
 struct rtw_efuse *efuse = &rtwdev->efuse;
 int ret;

 mutex_lock(&rtwdev->mutex);


 ret = rtw_chip_efuse_enable(rtwdev);
 if (ret)
  goto out;

 ret = rtw_parse_efuse_map(rtwdev);
 if (ret)
  goto out;

 ret = rtw_dump_hw_feature(rtwdev);
 if (ret)
  goto out;

 ret = rtw_check_supported_rfe(rtwdev);
 if (ret)
  goto out;

 if (efuse->crystal_cap == 0xff)
  efuse->crystal_cap = 0;
 if (efuse->pa_type_2g == 0xff)
  efuse->pa_type_2g = 0;
 if (efuse->pa_type_5g == 0xff)
  efuse->pa_type_5g = 0;
 if (efuse->lna_type_2g == 0xff)
  efuse->lna_type_2g = 0;
 if (efuse->lna_type_5g == 0xff)
  efuse->lna_type_5g = 0;
 if (efuse->channel_plan == 0xff)
  efuse->channel_plan = 0x7f;
 if (efuse->rf_board_option == 0xff)
  efuse->rf_board_option = 0;
 if (efuse->bt_setting & BIT(0))
  efuse->share_ant = 1;
 if (efuse->regd == 0xff)
  efuse->regd = 0;

 efuse->btcoex = (efuse->rf_board_option & 0xe0) == 0x20;
 efuse->ext_pa_2g = efuse->pa_type_2g & BIT(4) ? 1 : 0;
 efuse->ext_lna_2g = efuse->lna_type_2g & BIT(3) ? 1 : 0;
 efuse->ext_pa_5g = efuse->pa_type_5g & BIT(0) ? 1 : 0;
 efuse->ext_lna_2g = efuse->lna_type_5g & BIT(3) ? 1 : 0;

 rtw_chip_efuse_disable(rtwdev);

out:
 mutex_unlock(&rtwdev->mutex);
 return ret;
}
