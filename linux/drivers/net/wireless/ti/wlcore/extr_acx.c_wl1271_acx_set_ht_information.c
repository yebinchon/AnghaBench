
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct wl12xx_vif {int role_id; } ;
struct wl1271_acx_ht_information {int gf_protection; scalar_t__ dual_cts_protection; scalar_t__ ht_tx_burst_limit; scalar_t__ rifs_mode; scalar_t__ ht_protection; int role_id; } ;
struct wl1271 {int dummy; } ;


 int ACX_HT_BSS_OPERATION ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT ;
 int IEEE80211_HT_OP_MODE_PROTECTION ;
 int kfree (struct wl1271_acx_ht_information*) ;
 struct wl1271_acx_ht_information* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl1271_acx_ht_information*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_set_ht_information(struct wl1271 *wl,
       struct wl12xx_vif *wlvif,
       u16 ht_operation_mode)
{
 struct wl1271_acx_ht_information *acx;
 int ret = 0;

 wl1271_debug(DEBUG_ACX, "acx ht information setting");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->role_id = wlvif->role_id;
 acx->ht_protection =
  (u8)(ht_operation_mode & IEEE80211_HT_OP_MODE_PROTECTION);
 acx->rifs_mode = 0;
 acx->gf_protection =
  !!(ht_operation_mode & IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT);
 acx->ht_tx_burst_limit = 0;
 acx->dual_cts_protection = 0;

 ret = wl1271_cmd_configure(wl, ACX_HT_BSS_OPERATION, acx, sizeof(*acx));

 if (ret < 0) {
  wl1271_warning("acx ht information setting failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
