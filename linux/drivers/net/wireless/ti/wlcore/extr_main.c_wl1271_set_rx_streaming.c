
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int flags; } ;
struct wl1271 {int dummy; } ;


 int WLVIF_FLAG_RX_STREAMING_STARTED ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int wl1271_acx_ps_rx_streaming (struct wl1271*,struct wl12xx_vif*,int) ;

__attribute__((used)) static int wl1271_set_rx_streaming(struct wl1271 *wl, struct wl12xx_vif *wlvif,
       bool enable)
{
 int ret = 0;


 ret = wl1271_acx_ps_rx_streaming(wl, wlvif, enable);
 if (ret < 0)
  goto out;

 if (enable)
  set_bit(WLVIF_FLAG_RX_STREAMING_STARTED, &wlvif->flags);
 else
  clear_bit(WLVIF_FLAG_RX_STREAMING_STARTED, &wlvif->flags);
out:
 return ret;
}
