
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_vif {int role_id; } ;
struct wl1271_acx_ba_initiator_policy {int inactivity_timeout; int win_size; int tid_bitmap; int role_id; } ;
struct TYPE_3__ {int inactivity_timeout; int tx_ba_win_size; int tx_ba_tid_bitmap; } ;
struct TYPE_4__ {TYPE_1__ ht; } ;
struct wl1271 {TYPE_2__ conf; } ;


 int ACX_BA_SESSION_INIT_POLICY ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl1271_acx_ba_initiator_policy*) ;
 struct wl1271_acx_ba_initiator_policy* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl1271_acx_ba_initiator_policy*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl12xx_acx_set_ba_initiator_policy(struct wl1271 *wl,
           struct wl12xx_vif *wlvif)
{
 struct wl1271_acx_ba_initiator_policy *acx;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx ba initiator policy");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }


 acx->role_id = wlvif->role_id;
 acx->tid_bitmap = wl->conf.ht.tx_ba_tid_bitmap;
 acx->win_size = wl->conf.ht.tx_ba_win_size;
 acx->inactivity_timeout = wl->conf.ht.inactivity_timeout;

 ret = wl1271_cmd_configure(wl,
       ACX_BA_SESSION_INIT_POLICY,
       acx,
       sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx ba initiator policy failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
