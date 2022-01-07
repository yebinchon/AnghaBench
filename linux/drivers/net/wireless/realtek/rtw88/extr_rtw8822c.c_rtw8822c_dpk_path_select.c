
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int RF_PATH_A ;
 int RF_PATH_B ;
 int rtw8822c_dpk_cal_coef1 (struct rtw_dev*) ;
 int rtw8822c_dpk_calibrate (struct rtw_dev*,int ) ;
 int rtw8822c_dpk_on (struct rtw_dev*,int ) ;

__attribute__((used)) static void rtw8822c_dpk_path_select(struct rtw_dev *rtwdev)
{
 rtw8822c_dpk_calibrate(rtwdev, RF_PATH_A);
 rtw8822c_dpk_calibrate(rtwdev, RF_PATH_B);
 rtw8822c_dpk_on(rtwdev, RF_PATH_A);
 rtw8822c_dpk_on(rtwdev, RF_PATH_B);
 rtw8822c_dpk_cal_coef1(rtwdev);
}
