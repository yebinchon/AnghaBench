
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct wl12xx_vif {int role_id; } ;
struct TYPE_3__ {scalar_t__ rts_threshold; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct acx_rts_threshold {int threshold; int role_id; } ;


 int DEBUG_ACX ;
 int DOT11_RTS_THRESHOLD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IEEE80211_MAX_RTS_THRESHOLD ;
 int cpu_to_le16 (int ) ;
 int kfree (struct acx_rts_threshold*) ;
 struct acx_rts_threshold* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_rts_threshold*,int) ;
 int wl1271_debug (int ,char*,scalar_t__) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_rts_threshold(struct wl1271 *wl, struct wl12xx_vif *wlvif,
        u32 rts_threshold)
{
 struct acx_rts_threshold *rts;
 int ret;





 if (rts_threshold > IEEE80211_MAX_RTS_THRESHOLD)
  rts_threshold = wl->conf.rx.rts_threshold;

 wl1271_debug(DEBUG_ACX, "acx rts threshold: %d", rts_threshold);

 rts = kzalloc(sizeof(*rts), GFP_KERNEL);
 if (!rts) {
  ret = -ENOMEM;
  goto out;
 }

 rts->role_id = wlvif->role_id;
 rts->threshold = cpu_to_le16((u16)rts_threshold);

 ret = wl1271_cmd_configure(wl, DOT11_RTS_THRESHOLD, rts, sizeof(*rts));
 if (ret < 0) {
  wl1271_warning("failed to set rts threshold: %d", ret);
  goto out;
 }

out:
 kfree(rts);
 return ret;
}
