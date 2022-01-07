
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {scalar_t__ bss_type; int flags; int basic_rate_set; int basic_rate; } ;
struct wl1271 {int dummy; } ;


 scalar_t__ BSS_TYPE_STA_BSS ;
 int WLVIF_FLAG_IN_USE ;
 int clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wl1271_acx_sta_rate_policies (struct wl1271*,struct wl12xx_vif*) ;
 int wl1271_set_band_rate (struct wl1271*,struct wl12xx_vif*) ;
 int wl1271_tx_min_rate_get (struct wl1271*,int ) ;
 int wl12xx_cmd_role_stop_sta (struct wl1271*,struct wl12xx_vif*) ;

__attribute__((used)) static int wlcore_clear_bssid(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 int ret;


 wl1271_set_band_rate(wl, wlvif);
 wlvif->basic_rate = wl1271_tx_min_rate_get(wl, wlvif->basic_rate_set);

 ret = wl1271_acx_sta_rate_policies(wl, wlvif);
 if (ret < 0)
  return ret;

 if (wlvif->bss_type == BSS_TYPE_STA_BSS &&
     test_bit(WLVIF_FLAG_IN_USE, &wlvif->flags)) {
  ret = wl12xx_cmd_role_stop_sta(wl, wlvif);
  if (ret < 0)
   return ret;
 }

 clear_bit(WLVIF_FLAG_IN_USE, &wlvif->flags);
 return 0;
}
