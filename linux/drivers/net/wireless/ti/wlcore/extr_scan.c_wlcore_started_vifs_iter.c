
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wl12xx_vif {int bss_type; TYPE_1__* wl; int flags; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {int active_sta_count; } ;




 int WLVIF_FLAG_STA_ASSOCIATED ;
 int test_bit (int ,int *) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;

__attribute__((used)) static void wlcore_started_vifs_iter(void *data, u8 *mac,
         struct ieee80211_vif *vif)
{
 struct wl12xx_vif *wlvif = wl12xx_vif_to_data(vif);
 bool active = 0;
 int *count = (int *)data;






 switch (wlvif->bss_type) {
 case 128:
  if (test_bit(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags))
   active = 1;
  break;

 case 129:
  if (wlvif->wl->active_sta_count > 0)
   active = 1;
  break;

 default:
  break;
 }

 if (active)
  (*count)++;
}
