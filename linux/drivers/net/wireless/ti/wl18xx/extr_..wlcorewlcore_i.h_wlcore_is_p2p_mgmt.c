
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl12xx_vif {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 TYPE_1__* wl12xx_wlvif_to_vif (struct wl12xx_vif*) ;

__attribute__((used)) static inline bool wlcore_is_p2p_mgmt(struct wl12xx_vif *wlvif)
{
 return wl12xx_wlvif_to_vif(wlvif)->type == NL80211_IFTYPE_P2P_DEVICE;
}
