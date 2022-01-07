
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rcr; } ;
struct rtw_dev {int watch_dog_work; int hw; TYPE_1__ hal; } ;


 int REG_RCR ;
 int RTW_FLAG_RUNNING ;
 int RTW_WATCH_DOG_DELAY_TIME ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int rtw_flag_set (struct rtw_dev*,int ) ;
 int rtw_power_on (struct rtw_dev*) ;
 int rtw_sec_enable_sec_engine (struct rtw_dev*) ;
 int rtw_write32 (struct rtw_dev*,int ,int ) ;

int rtw_core_start(struct rtw_dev *rtwdev)
{
 int ret;

 ret = rtw_power_on(rtwdev);
 if (ret)
  return ret;

 rtw_sec_enable_sec_engine(rtwdev);


 rtw_write32(rtwdev, REG_RCR, rtwdev->hal.rcr);

 ieee80211_queue_delayed_work(rtwdev->hw, &rtwdev->watch_dog_work,
         RTW_WATCH_DOG_DELAY_TIME);

 rtw_flag_set(rtwdev, RTW_FLAG_RUNNING);

 return 0;
}
