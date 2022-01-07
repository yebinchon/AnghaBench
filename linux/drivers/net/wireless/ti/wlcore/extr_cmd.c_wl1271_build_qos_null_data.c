
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int template ;
struct wl12xx_vif {int basic_rate; int role_id; } ;
struct wl1271 {int dummy; } ;
struct TYPE_2__ {int bssid; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; int addr; } ;
struct ieee80211_qos_hdr {void* qos_ctrl; void* frame_control; int addr3; int addr2; int addr1; } ;


 int CMD_TEMPL_QOS_NULL_DATA ;
 int ETH_ALEN ;
 int IEEE80211_FCTL_TODS ;
 int IEEE80211_FTYPE_DATA ;
 int IEEE80211_STYPE_QOS_NULLFUNC ;
 void* cpu_to_le16 (int) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct ieee80211_qos_hdr*,int ,int) ;
 int wl1271_cmd_template_set (struct wl1271*,int ,int ,struct ieee80211_qos_hdr*,int,int ,int ) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;

int wl1271_build_qos_null_data(struct wl1271 *wl, struct ieee80211_vif *vif)
{
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 struct ieee80211_qos_hdr template;

 memset(&template, 0, sizeof(template));

 memcpy(template.addr1, vif->bss_conf.bssid, ETH_ALEN);
 memcpy(template.addr2, vif->addr, ETH_ALEN);
 memcpy(template.addr3, vif->bss_conf.bssid, ETH_ALEN);

 template.frame_control = cpu_to_le16(IEEE80211_FTYPE_DATA |
          IEEE80211_STYPE_QOS_NULLFUNC |
          IEEE80211_FCTL_TODS);


 template.qos_ctrl = cpu_to_le16(0);

 return wl1271_cmd_template_set(wl, wlvif->role_id,
           CMD_TEMPL_QOS_NULL_DATA, &template,
           sizeof(template), 0,
           wlvif->basic_rate);
}
