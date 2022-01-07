
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_sta_info {int mac_id; } ;
struct rtw_dev {int mutex; int sta_cnt; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtw_fw_media_status_report (struct rtw_dev*,int ,int) ;
 int rtw_info (struct rtw_dev*,char*,int ,int ) ;
 int rtw_release_macid (struct rtw_dev*,int ) ;

__attribute__((used)) static int rtw_ops_sta_remove(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         struct ieee80211_sta *sta)
{
 struct rtw_dev *rtwdev = hw->priv;
 struct rtw_sta_info *si = (struct rtw_sta_info *)sta->drv_priv;

 mutex_lock(&rtwdev->mutex);

 rtw_release_macid(rtwdev, si->mac_id);
 rtw_fw_media_status_report(rtwdev, si->mac_id, 0);

 rtwdev->sta_cnt--;

 rtw_info(rtwdev, "sta %pM with macid %d left\n",
   sta->addr, si->mac_id);

 mutex_unlock(&rtwdev->mutex);
 return 0;
}
