
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int RF_PATH_A ;
 int RF_PATH_B ;
 int rtw8822c_dac_cal_restore_path (struct rtw_dev*,int ) ;

__attribute__((used)) static bool __rtw8822c_dac_cal_restore(struct rtw_dev *rtwdev)
{
 if (!rtw8822c_dac_cal_restore_path(rtwdev, RF_PATH_A))
  return 0;

 if (!rtw8822c_dac_cal_restore_path(rtwdev, RF_PATH_B))
  return 0;

 return 1;
}
