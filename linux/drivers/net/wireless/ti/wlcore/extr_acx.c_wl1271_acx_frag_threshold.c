
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ frag_threshold; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct acx_frag_threshold {int frag_threshold; } ;


 int ACX_FRAG_CFG ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IEEE80211_MAX_FRAG_THRESHOLD ;
 int cpu_to_le16 (int ) ;
 int kfree (struct acx_frag_threshold*) ;
 struct acx_frag_threshold* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_frag_threshold*,int) ;
 int wl1271_debug (int ,char*,scalar_t__) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_frag_threshold(struct wl1271 *wl, u32 frag_threshold)
{
 struct acx_frag_threshold *acx;
 int ret = 0;





 if (frag_threshold > IEEE80211_MAX_FRAG_THRESHOLD)
  frag_threshold = wl->conf.tx.frag_threshold;

 wl1271_debug(DEBUG_ACX, "acx frag threshold: %d", frag_threshold);

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);

 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->frag_threshold = cpu_to_le16((u16)frag_threshold);
 ret = wl1271_cmd_configure(wl, ACX_FRAG_CFG, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("Setting of frag threshold failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
