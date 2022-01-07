
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int ba_allowed; scalar_t__ bss_type; int ba_support; } ;
struct wl1271 {scalar_t__ ba_rx_session_count; } ;


 scalar_t__ BSS_TYPE_AP_BSS ;
 scalar_t__ BSS_TYPE_STA_BSS ;
 int wl12xx_acx_set_ba_initiator_policy (struct wl1271*,struct wl12xx_vif*) ;

__attribute__((used)) static int wl1271_set_ba_policies(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{

 wlvif->ba_allowed = 1;
 wl->ba_rx_session_count = 0;


 if (wlvif->bss_type != BSS_TYPE_AP_BSS &&
     wlvif->bss_type != BSS_TYPE_STA_BSS) {
  wlvif->ba_support = 0;
  return 0;
 }

 wlvif->ba_support = 1;


 return wl12xx_acx_set_ba_initiator_policy(wl, wlvif);
}
