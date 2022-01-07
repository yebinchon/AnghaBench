
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_coex {int defreeze_work; int bt_reenable_work; int bt_relink_work; } ;
struct rtw_dev {int watch_dog_work; struct rtw_coex coex; } ;


 int RTW_FLAG_FW_RUNNING ;
 int RTW_FLAG_RUNNING ;
 int cancel_delayed_work_sync (int *) ;
 int rtw_flag_clear (struct rtw_dev*,int ) ;
 int rtw_power_off (struct rtw_dev*) ;

void rtw_core_stop(struct rtw_dev *rtwdev)
{
 struct rtw_coex *coex = &rtwdev->coex;

 rtw_flag_clear(rtwdev, RTW_FLAG_RUNNING);
 rtw_flag_clear(rtwdev, RTW_FLAG_FW_RUNNING);

 cancel_delayed_work_sync(&rtwdev->watch_dog_work);
 cancel_delayed_work_sync(&coex->bt_relink_work);
 cancel_delayed_work_sync(&coex->bt_reenable_work);
 cancel_delayed_work_sync(&coex->defreeze_work);

 rtw_power_off(rtwdev);
}
