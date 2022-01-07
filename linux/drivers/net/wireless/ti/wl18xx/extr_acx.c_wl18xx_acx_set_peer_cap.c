
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wlcore_acx_peer_cap {void* supported_rates; void* ht_capabilites; int hlid; int ampdu_min_spacing; int ampdu_max_length; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_sta_ht_cap {int ampdu_density; int ampdu_factor; int cap; scalar_t__ ht_supported; } ;


 int ACX_PEER_CAP ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WL12XX_HT_CAP_HT_OPERATION ;
 void* cpu_to_le32 (int ) ;
 int kfree (struct wlcore_acx_peer_cap*) ;
 struct wlcore_acx_peer_cap* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wlcore_acx_peer_cap*,int) ;
 int wl1271_debug (int ,char*,scalar_t__,int ,int ) ;
 int wl1271_warning (char*,int) ;

int wl18xx_acx_set_peer_cap(struct wl1271 *wl,
       struct ieee80211_sta_ht_cap *ht_cap,
       bool allow_ht_operation,
       u32 rate_set, u8 hlid)
{
 struct wlcore_acx_peer_cap *acx;
 int ret = 0;
 u32 ht_capabilites = 0;

 wl1271_debug(DEBUG_ACX,
       "acx set cap ht_supp: %d ht_cap: %d rates: 0x%x",
       ht_cap->ht_supported, ht_cap->cap, rate_set);

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 if (allow_ht_operation && ht_cap->ht_supported) {

  ht_capabilites = ht_cap->cap;





  ht_capabilites |= WL12XX_HT_CAP_HT_OPERATION;


  acx->ampdu_max_length = ht_cap->ampdu_factor;
  acx->ampdu_min_spacing = ht_cap->ampdu_density;
 }

 acx->hlid = hlid;
 acx->ht_capabilites = cpu_to_le32(ht_capabilites);
 acx->supported_rates = cpu_to_le32(rate_set);

 ret = wl1271_cmd_configure(wl, ACX_PEER_CAP, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx ht capabilities setting failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
