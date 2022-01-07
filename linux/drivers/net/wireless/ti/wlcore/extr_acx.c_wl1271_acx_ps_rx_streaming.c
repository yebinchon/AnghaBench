
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct wl12xx_vif {int role_id; } ;
struct wl1271_acx_ps_rx_streaming {int tid; int enable; int timeout; int period; int role_id; } ;
struct TYPE_3__ {int queues; int interval; } ;
struct TYPE_4__ {TYPE_1__ rx_streaming; } ;
struct wl1271 {TYPE_2__ conf; } ;


 int ACX_PS_RX_STREAMING ;
 int BIT (int) ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl1271_acx_ps_rx_streaming*) ;
 struct wl1271_acx_ps_rx_streaming* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl1271_acx_ps_rx_streaming*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_ps_rx_streaming(struct wl1271 *wl, struct wl12xx_vif *wlvif,
          bool enable)
{
 struct wl1271_acx_ps_rx_streaming *rx_streaming;
 u32 conf_queues, enable_queues;
 int i, ret = 0;

 wl1271_debug(DEBUG_ACX, "acx ps rx streaming");

 rx_streaming = kzalloc(sizeof(*rx_streaming), GFP_KERNEL);
 if (!rx_streaming) {
  ret = -ENOMEM;
  goto out;
 }

 conf_queues = wl->conf.rx_streaming.queues;
 if (enable)
  enable_queues = conf_queues;
 else
  enable_queues = 0;

 for (i = 0; i < 8; i++) {





  if (!(conf_queues & BIT(i)))
   continue;

  rx_streaming->role_id = wlvif->role_id;
  rx_streaming->tid = i;
  rx_streaming->enable = enable_queues & BIT(i);
  rx_streaming->period = wl->conf.rx_streaming.interval;
  rx_streaming->timeout = wl->conf.rx_streaming.interval;

  ret = wl1271_cmd_configure(wl, ACX_PS_RX_STREAMING,
        rx_streaming,
        sizeof(*rx_streaming));
  if (ret < 0) {
   wl1271_warning("acx ps rx streaming failed: %d", ret);
   goto out;
  }
 }
out:
 kfree(rx_streaming);
 return ret;
}
