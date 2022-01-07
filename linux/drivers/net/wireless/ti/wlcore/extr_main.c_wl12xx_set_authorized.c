
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hlid; } ;
struct wl12xx_vif {scalar_t__ bss_type; TYPE_1__ sta; int flags; } ;
struct wl1271 {int dummy; } ;


 scalar_t__ BSS_TYPE_STA_BSS ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int WLVIF_FLAG_STA_ASSOCIATED ;
 int WLVIF_FLAG_STA_STATE_SENT ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int wl1271_info (char*) ;
 int wl12xx_cmd_set_peer_state (struct wl1271*,struct wl12xx_vif*,int ) ;

__attribute__((used)) static int wl12xx_set_authorized(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 int ret;

 if (WARN_ON(wlvif->bss_type != BSS_TYPE_STA_BSS))
  return -EINVAL;

 if (!test_bit(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags))
  return 0;

 if (test_and_set_bit(WLVIF_FLAG_STA_STATE_SENT, &wlvif->flags))
  return 0;

 ret = wl12xx_cmd_set_peer_state(wl, wlvif, wlvif->sta.hlid);
 if (ret < 0)
  return ret;

 wl1271_info("Association completed.");
 return 0;
}
