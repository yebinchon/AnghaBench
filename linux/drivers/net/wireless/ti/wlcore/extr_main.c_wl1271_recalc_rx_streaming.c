
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {int rx_streaming_timer; int flags; } ;
struct TYPE_3__ {int interval; scalar_t__ always; } ;
struct TYPE_4__ {TYPE_1__ rx_streaming; } ;
struct wl1271 {int flags; TYPE_2__ conf; } ;


 int WL1271_FLAG_SOFT_GEMINI ;
 int WLVIF_FLAG_RX_STREAMING_STARTED ;
 int WLVIF_FLAG_STA_ASSOCIATED ;
 int del_timer_sync (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wl1271_set_rx_streaming (struct wl1271*,struct wl12xx_vif*,int) ;

int wl1271_recalc_rx_streaming(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 int ret = 0;
 int period = wl->conf.rx_streaming.interval;


 if (!test_bit(WLVIF_FLAG_RX_STREAMING_STARTED, &wlvif->flags))
  goto out;


 if (period &&
     test_bit(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags) &&
     (wl->conf.rx_streaming.always ||
      test_bit(WL1271_FLAG_SOFT_GEMINI, &wl->flags)))
  ret = wl1271_set_rx_streaming(wl, wlvif, 1);
 else {
  ret = wl1271_set_rx_streaming(wl, wlvif, 0);

  del_timer_sync(&wlvif->rx_streaming_timer);
 }
out:
 return ret;
}
