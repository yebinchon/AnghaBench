
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wlcore_peer_ht_operation_mode {int bandwidth; int hlid; } ;
struct wl1271 {int dummy; } ;


 int ACX_PEER_HT_OPERATION_MODE_CFG ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WLCORE_BANDWIDTH_20MHZ ;
 int WLCORE_BANDWIDTH_40MHZ ;
 int kfree (struct wlcore_peer_ht_operation_mode*) ;
 struct wlcore_peer_ht_operation_mode* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wlcore_peer_ht_operation_mode*,int) ;
 int wl1271_debug (int ,char*,int ,int) ;
 int wl1271_warning (char*,int) ;

int wl18xx_acx_peer_ht_operation_mode(struct wl1271 *wl, u8 hlid, bool wide)
{
 struct wlcore_peer_ht_operation_mode *acx;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx peer ht operation mode hlid %d bw %d",
       hlid, wide);

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->hlid = hlid;
 acx->bandwidth = wide ? WLCORE_BANDWIDTH_40MHZ : WLCORE_BANDWIDTH_20MHZ;

 ret = wl1271_cmd_configure(wl, ACX_PEER_HT_OPERATION_MODE_CFG, acx,
       sizeof(*acx));

 if (ret < 0) {
  wl1271_warning("acx peer ht operation mode failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;

}
