
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {int dummy; } ;
struct wl1271 {TYPE_2__* hw; } ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct TYPE_3__ {int rts_threshold; } ;


 int DEFAULT_SLOT_TIME ;
 int wl1271_acx_rts_threshold (struct wl1271*,struct wl12xx_vif*,int ) ;
 int wl1271_acx_service_period_timeout (struct wl1271*,struct wl12xx_vif*) ;
 int wl1271_acx_slot (struct wl1271*,struct wl12xx_vif*,int ) ;

__attribute__((used)) static int wl12xx_init_phy_vif_config(struct wl1271 *wl,
         struct wl12xx_vif *wlvif)
{
 int ret;

 ret = wl1271_acx_slot(wl, wlvif, DEFAULT_SLOT_TIME);
 if (ret < 0)
  return ret;

 ret = wl1271_acx_service_period_timeout(wl, wlvif);
 if (ret < 0)
  return ret;

 ret = wl1271_acx_rts_threshold(wl, wlvif, wl->hw->wiphy->rts_threshold);
 if (ret < 0)
  return ret;

 return 0;
}
