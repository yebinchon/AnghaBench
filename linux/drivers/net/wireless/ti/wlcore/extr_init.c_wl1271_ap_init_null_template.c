
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl12xx_vif {int role_id; int basic_rate_set; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_vif {int addr; } ;
struct ieee80211_hdr_3addr {int addr3; int addr2; int frame_control; } ;


 int CMD_TEMPL_NULL_DATA ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int IEEE80211_FCTL_FROMDS ;
 int IEEE80211_FTYPE_DATA ;
 int IEEE80211_STYPE_NULLFUNC ;
 int cpu_to_le16 (int) ;
 int kfree (struct ieee80211_hdr_3addr*) ;
 struct ieee80211_hdr_3addr* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int wl1271_cmd_template_set (struct wl1271*,int ,int ,struct ieee80211_hdr_3addr*,int,int ,int ) ;
 int wl1271_tx_min_rate_get (struct wl1271*,int ) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;

__attribute__((used)) static int wl1271_ap_init_null_template(struct wl1271 *wl,
     struct ieee80211_vif *vif)
{
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 struct ieee80211_hdr_3addr *nullfunc;
 int ret;
 u32 rate;

 nullfunc = kzalloc(sizeof(*nullfunc), GFP_KERNEL);
 if (!nullfunc) {
  ret = -ENOMEM;
  goto out;
 }

 nullfunc->frame_control = cpu_to_le16(IEEE80211_FTYPE_DATA |
           IEEE80211_STYPE_NULLFUNC |
           IEEE80211_FCTL_FROMDS);



 memcpy(nullfunc->addr2, vif->addr, ETH_ALEN);
 memcpy(nullfunc->addr3, vif->addr, ETH_ALEN);

 rate = wl1271_tx_min_rate_get(wl, wlvif->basic_rate_set);
 ret = wl1271_cmd_template_set(wl, wlvif->role_id,
          CMD_TEMPL_NULL_DATA, nullfunc,
          sizeof(*nullfunc), 0, rate);

out:
 kfree(nullfunc);
 return ret;
}
