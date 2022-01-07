
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int rtw_chip_board_info_setup (struct rtw_dev*) ;
 int rtw_chip_efuse_info_setup (struct rtw_dev*) ;
 int rtw_chip_parameter_setup (struct rtw_dev*) ;
 int rtw_err (struct rtw_dev*,char*) ;

int rtw_chip_info_setup(struct rtw_dev *rtwdev)
{
 int ret;

 ret = rtw_chip_parameter_setup(rtwdev);
 if (ret) {
  rtw_err(rtwdev, "failed to setup chip parameters\n");
  goto err_out;
 }

 ret = rtw_chip_efuse_info_setup(rtwdev);
 if (ret) {
  rtw_err(rtwdev, "failed to setup chip efuse info\n");
  goto err_out;
 }

 ret = rtw_chip_board_info_setup(rtwdev);
 if (ret) {
  rtw_err(rtwdev, "failed to setup chip board info\n");
  goto err_out;
 }

 return 0;

err_out:
 return ret;
}
