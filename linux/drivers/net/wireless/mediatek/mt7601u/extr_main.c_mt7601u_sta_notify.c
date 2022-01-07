
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum sta_notify_cmd { ____Placeholder_sta_notify_cmd } sta_notify_cmd ;



__attribute__((used)) static void
mt7601u_sta_notify(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
     enum sta_notify_cmd cmd, struct ieee80211_sta *sta)
{
}
