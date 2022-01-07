
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wl1271_acx_ba_receiver_setup {int hlid; int tid; int enable; int win_size; int ssn; } ;
struct wl1271 {int dummy; } ;


 int ACX_BA_SESSION_RX_SETUP ;
 int BIT (int) ;
 int CMD_STATUS_NO_RX_BA_SESSION ;
 int DEBUG_ACX ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl1271_acx_ba_receiver_setup*) ;
 struct wl1271_acx_ba_receiver_setup* kzalloc (int,int ) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;
 int wlcore_cmd_configure_failsafe (struct wl1271*,int ,struct wl1271_acx_ba_receiver_setup*,int,int ) ;

int wl12xx_acx_set_ba_receiver_session(struct wl1271 *wl, u8 tid_index,
           u16 ssn, bool enable, u8 peer_hlid,
           u8 win_size)
{
 struct wl1271_acx_ba_receiver_setup *acx;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx ba receiver session setting");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->hlid = peer_hlid;
 acx->tid = tid_index;
 acx->enable = enable;
 acx->win_size = win_size;
 acx->ssn = ssn;

 ret = wlcore_cmd_configure_failsafe(wl, ACX_BA_SESSION_RX_SETUP, acx,
         sizeof(*acx),
         BIT(CMD_STATUS_NO_RX_BA_SESSION));
 if (ret < 0) {
  wl1271_warning("acx ba receiver session failed: %d", ret);
  goto out;
 }


 if (ret == CMD_STATUS_NO_RX_BA_SESSION) {
  wl1271_warning("no fw rx ba on tid %d", tid_index);
  ret = -EBUSY;
  goto out;
 }

 ret = 0;
out:
 kfree(acx);
 return ret;
}
