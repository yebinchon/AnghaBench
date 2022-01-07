
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_sec_desc {scalar_t__ total_cam_num; } ;
struct rtw_dev {int mutex; struct rtw_sec_desc sec; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {int cipher; int flags; scalar_t__ keyidx; scalar_t__ hw_key_idx; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;



 int ENOSPC ;
 int ENOTSUPP ;
 int EOPNOTSUPP ;
 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int IEEE80211_KEY_FLAG_GENERATE_MMIC ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 int IEEE80211_KEY_FLAG_SW_MGMT_TX ;
 scalar_t__ RTW_CAM_AES ;
 scalar_t__ RTW_CAM_TKIP ;
 scalar_t__ RTW_CAM_WEP104 ;
 scalar_t__ RTW_CAM_WEP40 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtw_sec_clear_cam (struct rtw_dev*,struct rtw_sec_desc*,scalar_t__) ;
 scalar_t__ rtw_sec_get_free_cam (struct rtw_sec_desc*) ;
 int rtw_sec_write_cam (struct rtw_dev*,struct rtw_sec_desc*,struct ieee80211_sta*,struct ieee80211_key_conf*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int rtw_ops_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
      struct ieee80211_vif *vif, struct ieee80211_sta *sta,
      struct ieee80211_key_conf *key)
{
 struct rtw_dev *rtwdev = hw->priv;
 struct rtw_sec_desc *sec = &rtwdev->sec;
 u8 hw_key_type;
 u8 hw_key_idx;
 int ret = 0;

 switch (key->cipher) {
 case 128:
  hw_key_type = RTW_CAM_WEP40;
  break;
 case 129:
  hw_key_type = RTW_CAM_WEP104;
  break;
 case 130:
  hw_key_type = RTW_CAM_TKIP;
  key->flags |= IEEE80211_KEY_FLAG_GENERATE_MMIC;
  break;
 case 131:
  hw_key_type = RTW_CAM_AES;
  key->flags |= IEEE80211_KEY_FLAG_SW_MGMT_TX;
  break;
 case 135:
 case 134:
 case 133:
 case 132:

  return -EOPNOTSUPP;
 default:
  return -ENOTSUPP;
 }

 mutex_lock(&rtwdev->mutex);

 if (key->flags & IEEE80211_KEY_FLAG_PAIRWISE) {
  hw_key_idx = rtw_sec_get_free_cam(sec);
 } else {

  hw_key_idx = key->keyidx;
 }

 if (hw_key_idx > sec->total_cam_num) {
  ret = -ENOSPC;
  goto out;
 }

 switch (cmd) {
 case 136:

  key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
  key->hw_key_idx = hw_key_idx;
  rtw_sec_write_cam(rtwdev, sec, sta, key,
      hw_key_type, hw_key_idx);
  break;
 case 137:
  rtw_sec_clear_cam(rtwdev, sec, key->hw_key_idx);
  break;
 }

out:
 mutex_unlock(&rtwdev->mutex);

 return ret;
}
