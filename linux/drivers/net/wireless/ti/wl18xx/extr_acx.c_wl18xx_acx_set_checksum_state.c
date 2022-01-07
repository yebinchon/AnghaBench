
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl18xx_acx_checksum_state {int checksum_state; } ;
struct wl1271 {int dummy; } ;


 int ACX_CSUM_CONFIG ;
 int CHECKSUM_OFFLOAD_ENABLED ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl18xx_acx_checksum_state*) ;
 struct wl18xx_acx_checksum_state* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl18xx_acx_checksum_state*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl18xx_acx_set_checksum_state(struct wl1271 *wl)
{
 struct wl18xx_acx_checksum_state *acx;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx checksum state");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->checksum_state = CHECKSUM_OFFLOAD_ENABLED;

 ret = wl1271_cmd_configure(wl, ACX_CSUM_CONFIG, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("failed to set Tx checksum state: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
