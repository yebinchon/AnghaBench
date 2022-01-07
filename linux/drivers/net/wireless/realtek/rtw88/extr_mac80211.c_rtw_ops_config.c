
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtw_dev {int mutex; } ;
struct TYPE_2__ {int flags; } ;
struct ieee80211_hw {TYPE_1__ conf; struct rtw_dev* priv; } ;


 int IEEE80211_CONF_CHANGE_CHANNEL ;
 int IEEE80211_CONF_CHANGE_IDLE ;
 int IEEE80211_CONF_IDLE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtw_enter_ips (struct rtw_dev*) ;
 int rtw_err (struct rtw_dev*,char*) ;
 int rtw_leave_ips (struct rtw_dev*) ;
 int rtw_set_channel (struct rtw_dev*) ;

__attribute__((used)) static int rtw_ops_config(struct ieee80211_hw *hw, u32 changed)
{
 struct rtw_dev *rtwdev = hw->priv;
 int ret = 0;

 mutex_lock(&rtwdev->mutex);

 if (changed & IEEE80211_CONF_CHANGE_IDLE) {
  if (hw->conf.flags & IEEE80211_CONF_IDLE) {
   rtw_enter_ips(rtwdev);
  } else {
   ret = rtw_leave_ips(rtwdev);
   if (ret) {
    rtw_err(rtwdev, "failed to leave idle state\n");
    goto out;
   }
  }
 }

 if (changed & IEEE80211_CONF_CHANGE_CHANNEL)
  rtw_set_channel(rtwdev);

out:
 mutex_unlock(&rtwdev->mutex);
 return ret;
}
