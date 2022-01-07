
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_ps_poll_template {int dummy; } ;
struct wl12xx_null_data_template {int dummy; } ;
struct wl12xx_disconn_template {int dummy; } ;
struct wl12xx_arp_rsp_template {int dummy; } ;
struct wl1271 {int quirks; int sched_scan_templ_id_5; int sched_scan_templ_id_2_4; int scan_templ_id_5; int scan_templ_id_2_4; } ;
struct ieee80211_qos_hdr {int dummy; } ;


 int CMD_TEMPL_AP_BEACON ;
 int CMD_TEMPL_AP_PROBE_RESPONSE ;
 int CMD_TEMPL_ARP_RSP ;
 int CMD_TEMPL_BEACON ;
 int CMD_TEMPL_DEAUTH_AP ;
 int CMD_TEMPL_KLV ;
 int CMD_TEMPL_NULL_DATA ;
 int CMD_TEMPL_PROBE_RESPONSE ;
 int CMD_TEMPL_PS_POLL ;
 int CMD_TEMPL_QOS_NULL_DATA ;
 int WL1271_CMD_TEMPL_DFLT_SIZE ;
 int WL1271_CMD_TEMPL_MAX_SIZE ;
 int WL1271_EXTRA_SPACE_MAX ;
 int WL1271_RATE_AUTOMATIC ;
 int WL12XX_INVALID_ROLE_ID ;
 int WLCORE_MAX_KLV_TEMPLATES ;
 int WLCORE_QUIRK_DUAL_PROBE_TMPL ;
 int wl1271_cmd_template_set (struct wl1271*,int ,int ,int *,int,int,int ) ;

int wl1271_init_templates_config(struct wl1271 *wl)
{
 int ret, i;
 size_t max_size;


 ret = wl1271_cmd_template_set(wl, WL12XX_INVALID_ROLE_ID,
          wl->scan_templ_id_2_4, ((void*)0),
          WL1271_CMD_TEMPL_MAX_SIZE,
          0, WL1271_RATE_AUTOMATIC);
 if (ret < 0)
  return ret;

 ret = wl1271_cmd_template_set(wl, WL12XX_INVALID_ROLE_ID,
          wl->scan_templ_id_5,
          ((void*)0), WL1271_CMD_TEMPL_MAX_SIZE, 0,
          WL1271_RATE_AUTOMATIC);
 if (ret < 0)
  return ret;

 if (wl->quirks & WLCORE_QUIRK_DUAL_PROBE_TMPL) {
  ret = wl1271_cmd_template_set(wl, WL12XX_INVALID_ROLE_ID,
           wl->sched_scan_templ_id_2_4,
           ((void*)0),
           WL1271_CMD_TEMPL_MAX_SIZE,
           0, WL1271_RATE_AUTOMATIC);
  if (ret < 0)
   return ret;

  ret = wl1271_cmd_template_set(wl, WL12XX_INVALID_ROLE_ID,
           wl->sched_scan_templ_id_5,
           ((void*)0),
           WL1271_CMD_TEMPL_MAX_SIZE,
           0, WL1271_RATE_AUTOMATIC);
  if (ret < 0)
   return ret;
 }

 ret = wl1271_cmd_template_set(wl, WL12XX_INVALID_ROLE_ID,
          CMD_TEMPL_NULL_DATA, ((void*)0),
          sizeof(struct wl12xx_null_data_template),
          0, WL1271_RATE_AUTOMATIC);
 if (ret < 0)
  return ret;

 ret = wl1271_cmd_template_set(wl, WL12XX_INVALID_ROLE_ID,
          CMD_TEMPL_PS_POLL, ((void*)0),
          sizeof(struct wl12xx_ps_poll_template),
          0, WL1271_RATE_AUTOMATIC);
 if (ret < 0)
  return ret;

 ret = wl1271_cmd_template_set(wl, WL12XX_INVALID_ROLE_ID,
          CMD_TEMPL_QOS_NULL_DATA, ((void*)0),
          sizeof
          (struct ieee80211_qos_hdr),
          0, WL1271_RATE_AUTOMATIC);
 if (ret < 0)
  return ret;

 ret = wl1271_cmd_template_set(wl, WL12XX_INVALID_ROLE_ID,
          CMD_TEMPL_PROBE_RESPONSE, ((void*)0),
          WL1271_CMD_TEMPL_DFLT_SIZE,
          0, WL1271_RATE_AUTOMATIC);
 if (ret < 0)
  return ret;

 ret = wl1271_cmd_template_set(wl, WL12XX_INVALID_ROLE_ID,
          CMD_TEMPL_BEACON, ((void*)0),
          WL1271_CMD_TEMPL_DFLT_SIZE,
          0, WL1271_RATE_AUTOMATIC);
 if (ret < 0)
  return ret;

 max_size = sizeof(struct wl12xx_arp_rsp_template) +
     WL1271_EXTRA_SPACE_MAX;
 ret = wl1271_cmd_template_set(wl, WL12XX_INVALID_ROLE_ID,
          CMD_TEMPL_ARP_RSP, ((void*)0),
          max_size,
          0, WL1271_RATE_AUTOMATIC);
 if (ret < 0)
  return ret;





 ret = wl1271_cmd_template_set(wl, WL12XX_INVALID_ROLE_ID,
          CMD_TEMPL_AP_PROBE_RESPONSE, ((void*)0),
          WL1271_CMD_TEMPL_MAX_SIZE,
          0, WL1271_RATE_AUTOMATIC);
 if (ret < 0)
  return ret;

 ret = wl1271_cmd_template_set(wl, WL12XX_INVALID_ROLE_ID,
          CMD_TEMPL_AP_BEACON, ((void*)0),
          WL1271_CMD_TEMPL_MAX_SIZE,
          0, WL1271_RATE_AUTOMATIC);
 if (ret < 0)
  return ret;

 ret = wl1271_cmd_template_set(wl, WL12XX_INVALID_ROLE_ID,
          CMD_TEMPL_DEAUTH_AP, ((void*)0),
          sizeof
          (struct wl12xx_disconn_template),
          0, WL1271_RATE_AUTOMATIC);
 if (ret < 0)
  return ret;

 for (i = 0; i < WLCORE_MAX_KLV_TEMPLATES; i++) {
  ret = wl1271_cmd_template_set(wl, WL12XX_INVALID_ROLE_ID,
           CMD_TEMPL_KLV, ((void*)0),
           sizeof(struct ieee80211_qos_hdr),
           i, WL1271_RATE_AUTOMATIC);
  if (ret < 0)
   return ret;
 }

 return 0;
}
