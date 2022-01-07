
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_sta_info {scalar_t__ mac_id; int init_ra_lv; int avg_rssi; struct ieee80211_vif* vif; struct ieee80211_sta* sta; } ;
struct rtw_dev {int mutex; int sta_cnt; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;


 int ENOSPC ;
 scalar_t__ RTW_MAX_MAC_ID_NUM ;
 int ewma_rssi_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rtw_acquire_macid (struct rtw_dev*) ;
 int rtw_fw_media_status_report (struct rtw_dev*,scalar_t__,int) ;
 int rtw_info (struct rtw_dev*,char*,int ,scalar_t__) ;
 int rtw_update_sta_info (struct rtw_dev*,struct rtw_sta_info*) ;

__attribute__((used)) static int rtw_ops_sta_add(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif,
      struct ieee80211_sta *sta)
{
 struct rtw_dev *rtwdev = hw->priv;
 struct rtw_sta_info *si = (struct rtw_sta_info *)sta->drv_priv;
 int ret = 0;

 mutex_lock(&rtwdev->mutex);

 si->mac_id = rtw_acquire_macid(rtwdev);
 if (si->mac_id >= RTW_MAX_MAC_ID_NUM) {
  ret = -ENOSPC;
  goto out;
 }

 si->sta = sta;
 si->vif = vif;
 si->init_ra_lv = 1;
 ewma_rssi_init(&si->avg_rssi);

 rtw_update_sta_info(rtwdev, si);
 rtw_fw_media_status_report(rtwdev, si->mac_id, 1);

 rtwdev->sta_cnt++;

 rtw_info(rtwdev, "sta %pM joined with macid %d\n",
   sta->addr, si->mac_id);

out:
 mutex_unlock(&rtwdev->mutex);
 return ret;
}
