
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {scalar_t__ state; int mutex; int dev; } ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct nlattr {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;


 int DEBUG_CMD ;
 int EINVAL ;
 int MAX_WLCORE_VENDOR_ATTR ;
 int NUM_WLCORE_VENDOR_ATTR ;
 scalar_t__ WLCORE_STATE_ON ;
 size_t WLCORE_VENDOR_ATTR_GROUP_ID ;
 size_t WLCORE_VENDOR_ATTR_GROUP_KEY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nla_data (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int nla_parse_deprecated (struct nlattr**,int ,void const*,int,int ,int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 scalar_t__ unlikely (int) ;
 struct ieee80211_hw* wiphy_to_ieee80211_hw (struct wiphy*) ;
 int wl1271_debug (int ,char*) ;
 int wlcore_smart_config_set_group_key (struct wl1271*,int ,int ,int ) ;
 int wlcore_vendor_attr_policy ;

__attribute__((used)) static int
wlcore_vendor_cmd_smart_config_set_group_key(struct wiphy *wiphy,
          struct wireless_dev *wdev,
          const void *data, int data_len)
{
 struct ieee80211_hw *hw = wiphy_to_ieee80211_hw(wiphy);
 struct wl1271 *wl = hw->priv;
 struct nlattr *tb[NUM_WLCORE_VENDOR_ATTR];
 int ret;

 wl1271_debug(DEBUG_CMD, "testmode cmd smart config set group key");

 if (!data)
  return -EINVAL;

 ret = nla_parse_deprecated(tb, MAX_WLCORE_VENDOR_ATTR, data, data_len,
       wlcore_vendor_attr_policy, ((void*)0));
 if (ret)
  return ret;

 if (!tb[WLCORE_VENDOR_ATTR_GROUP_ID] ||
     !tb[WLCORE_VENDOR_ATTR_GROUP_KEY])
  return -EINVAL;

 mutex_lock(&wl->mutex);

 if (unlikely(wl->state != WLCORE_STATE_ON)) {
  ret = -EINVAL;
  goto out;
 }

 ret = pm_runtime_get_sync(wl->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(wl->dev);
  goto out;
 }

 ret = wlcore_smart_config_set_group_key(wl,
   nla_get_u32(tb[WLCORE_VENDOR_ATTR_GROUP_ID]),
   nla_len(tb[WLCORE_VENDOR_ATTR_GROUP_KEY]),
   nla_data(tb[WLCORE_VENDOR_ATTR_GROUP_KEY]));

 pm_runtime_mark_last_busy(wl->dev);
 pm_runtime_put_autosuspend(wl->dev);
out:
 mutex_unlock(&wl->mutex);

 return ret;
}
