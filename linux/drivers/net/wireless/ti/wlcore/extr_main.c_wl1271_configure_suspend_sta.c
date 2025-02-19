
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {int flags; } ;
struct TYPE_3__ {scalar_t__ suspend_wake_up_event; scalar_t__ wake_up_event; scalar_t__ suspend_listen_interval; scalar_t__ listen_interval; } ;
struct TYPE_4__ {TYPE_1__ conn; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct cfg80211_wowlan {int dummy; } ;


 int WLVIF_FLAG_STA_ASSOCIATED ;
 int test_bit (int ,int *) ;
 int wl1271_acx_wake_up_conditions (struct wl1271*,struct wl12xx_vif*,scalar_t__,scalar_t__) ;
 int wl1271_configure_wowlan (struct wl1271*,struct cfg80211_wowlan*) ;
 int wl1271_error (char*,int) ;

__attribute__((used)) static int wl1271_configure_suspend_sta(struct wl1271 *wl,
     struct wl12xx_vif *wlvif,
     struct cfg80211_wowlan *wow)
{
 int ret = 0;

 if (!test_bit(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags))
  goto out;

 ret = wl1271_configure_wowlan(wl, wow);
 if (ret < 0)
  goto out;

 if ((wl->conf.conn.suspend_wake_up_event ==
      wl->conf.conn.wake_up_event) &&
     (wl->conf.conn.suspend_listen_interval ==
      wl->conf.conn.listen_interval))
  goto out;

 ret = wl1271_acx_wake_up_conditions(wl, wlvif,
        wl->conf.conn.suspend_wake_up_event,
        wl->conf.conn.suspend_listen_interval);

 if (ret < 0)
  wl1271_error("suspend: set wake up conditions failed: %d", ret);
out:
 return ret;

}
