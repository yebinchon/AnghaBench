
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rx_msdu_life_time; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct acx_rx_msdu_lifetime {int lifetime; } ;


 int DEBUG_ACX ;
 int DOT11_RX_MSDU_LIFE_TIME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_to_le32 (int ) ;
 int kfree (struct acx_rx_msdu_lifetime*) ;
 struct acx_rx_msdu_lifetime* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_rx_msdu_lifetime*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_rx_msdu_life_time(struct wl1271 *wl)
{
 struct acx_rx_msdu_lifetime *acx;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx rx msdu life time");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->lifetime = cpu_to_le32(wl->conf.rx.rx_msdu_life_time);
 ret = wl1271_cmd_configure(wl, DOT11_RX_MSDU_LIFE_TIME,
       acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("failed to set rx msdu life time: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
