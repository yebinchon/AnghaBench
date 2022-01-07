
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int dummy; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;


 int WARN_ON (int) ;

__attribute__((used)) static inline struct wl12xx_vif *wl12xx_vif_to_data(struct ieee80211_vif *vif)
{
 WARN_ON(!vif);
 return (struct wl12xx_vif *)vif->drv_priv;
}
