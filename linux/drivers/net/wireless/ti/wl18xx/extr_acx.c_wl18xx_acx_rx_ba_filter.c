
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct wl18xx_acx_rx_ba_filter {scalar_t__ enable; } ;
struct wl1271 {int dummy; } ;


 int ACX_RX_BA_FILTER ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl18xx_acx_rx_ba_filter*) ;
 struct wl18xx_acx_rx_ba_filter* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl18xx_acx_rx_ba_filter*,int) ;
 int wl1271_warning (char*,int) ;

int wl18xx_acx_rx_ba_filter(struct wl1271 *wl, bool action)
{
 struct wl18xx_acx_rx_ba_filter *acx;
 int ret = 0;

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->enable = (u32)action;
 ret = wl1271_cmd_configure(wl, ACX_RX_BA_FILTER, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx rx ba activity filter setting failed: %d",
          ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
