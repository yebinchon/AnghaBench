
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl12xx_vif {int role_id; int basic_rate_set; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_vif {int addr; } ;
struct ieee80211_qos_hdr {int addr3; int addr2; int frame_control; } ;


 int CMD_TEMPL_QOS_NULL_DATA ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int IEEE80211_FCTL_FROMDS ;
 int IEEE80211_FTYPE_DATA ;
 int IEEE80211_STYPE_QOS_NULLFUNC ;
 int cpu_to_le16 (int) ;
 int kfree (struct ieee80211_qos_hdr*) ;
 struct ieee80211_qos_hdr* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int wl1271_cmd_template_set (struct wl1271*,int ,int ,struct ieee80211_qos_hdr*,int,int ,int ) ;
 int wl1271_tx_min_rate_get (struct wl1271*,int ) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;

__attribute__((used)) static int wl1271_ap_init_qos_null_template(struct wl1271 *wl,
         struct ieee80211_vif *vif)
{
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 struct ieee80211_qos_hdr *qosnull;
 int ret;
 u32 rate;

 qosnull = kzalloc(sizeof(*qosnull), GFP_KERNEL);
 if (!qosnull) {
  ret = -ENOMEM;
  goto out;
 }

 qosnull->frame_control = cpu_to_le16(IEEE80211_FTYPE_DATA |
          IEEE80211_STYPE_QOS_NULLFUNC |
          IEEE80211_FCTL_FROMDS);



 memcpy(qosnull->addr2, vif->addr, ETH_ALEN);
 memcpy(qosnull->addr3, vif->addr, ETH_ALEN);

 rate = wl1271_tx_min_rate_get(wl, wlvif->basic_rate_set);
 ret = wl1271_cmd_template_set(wl, wlvif->role_id,
          CMD_TEMPL_QOS_NULL_DATA, qosnull,
          sizeof(*qosnull), 0, rate);

out:
 kfree(qosnull);
 return ret;
}
