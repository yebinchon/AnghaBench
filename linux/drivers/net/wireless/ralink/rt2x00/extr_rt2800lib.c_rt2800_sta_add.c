
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2x00_sta {int wcid; } ;
struct rt2x00_dev {struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {struct ieee80211_sta** wcid_to_sta; int sta_ids; int * ampdu_factor_cnt; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {int ampdu_factor; scalar_t__ ht_supported; } ;
struct ieee80211_sta {int addr; TYPE_1__ ht_cap; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;


 int STA_IDS_SIZE ;
 int WCID_END ;
 int WCID_START ;
 int __set_bit (int,int ) ;
 int find_first_zero_bit (int ,int ) ;
 int rt2800_config_wcid (struct rt2x00_dev*,int ,int) ;
 int rt2800_config_wcid_attr_bssidx (struct rt2x00_dev*,int,int ) ;
 int rt2800_delete_wcid_attr (struct rt2x00_dev*,int) ;
 int rt2800_set_max_psdu_len (struct rt2x00_dev*) ;
 int rt2x00lib_get_bssidx (struct rt2x00_dev*,struct ieee80211_vif*) ;
 struct rt2x00_sta* sta_to_rt2x00_sta (struct ieee80211_sta*) ;

int rt2800_sta_add(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
     struct ieee80211_sta *sta)
{
 struct rt2x00_dev *rt2x00dev = hw->priv;
 struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
 struct rt2x00_sta *sta_priv = sta_to_rt2x00_sta(sta);
 int wcid;







 if (sta->ht_cap.ht_supported) {
  drv_data->ampdu_factor_cnt[sta->ht_cap.ampdu_factor & 3]++;
  rt2800_set_max_psdu_len(rt2x00dev);
 }





 wcid = find_first_zero_bit(drv_data->sta_ids, STA_IDS_SIZE) + WCID_START;





 sta_priv->wcid = wcid;





 if (wcid > WCID_END)
  return 0;

 __set_bit(wcid - WCID_START, drv_data->sta_ids);
 drv_data->wcid_to_sta[wcid - WCID_START] = sta;




 rt2800_delete_wcid_attr(rt2x00dev, wcid);
 rt2800_config_wcid(rt2x00dev, sta->addr, wcid);
 rt2800_config_wcid_attr_bssidx(rt2x00dev, wcid,
           rt2x00lib_get_bssidx(rt2x00dev, vif));
 return 0;
}
