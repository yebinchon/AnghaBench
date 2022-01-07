
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl18xx_acx_clear_statistics {int dummy; } ;
struct wl1271 {int dummy; } ;


 int ACX_CLEAR_STATISTICS ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl18xx_acx_clear_statistics*) ;
 struct wl18xx_acx_clear_statistics* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl18xx_acx_clear_statistics*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl18xx_acx_clear_statistics(struct wl1271 *wl)
{
 struct wl18xx_acx_clear_statistics *acx;
 int ret = 0;

 wl1271_debug(DEBUG_ACX, "acx clear statistics");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 ret = wl1271_cmd_configure(wl, ACX_CLEAR_STATISTICS, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("failed to clear firmware statistics: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
