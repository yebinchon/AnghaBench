
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl18xx_priv {int extra_spare_key_count; } ;
struct wl1271 {struct wl18xx_priv* priv; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {scalar_t__ cipher; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;


 int DEBUG_CRYPT ;
 int DISABLE_KEY ;
 int SET_KEY ;
 scalar_t__ WL1271_CIPHER_SUITE_GEM ;
 int WL18XX_TX_HW_BLOCK_SPARE ;
 int WL18XX_TX_HW_EXTRA_BLOCK_SPARE ;
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ;
 int wl1271_debug (int ,char*,int) ;
 int wl18xx_set_host_cfg_bitmap (struct wl1271*,int ) ;
 int wlcore_set_key (struct wl1271*,int,struct ieee80211_vif*,struct ieee80211_sta*,struct ieee80211_key_conf*) ;

__attribute__((used)) static int wl18xx_set_key(struct wl1271 *wl, enum set_key_cmd cmd,
     struct ieee80211_vif *vif,
     struct ieee80211_sta *sta,
     struct ieee80211_key_conf *key_conf)
{
 struct wl18xx_priv *priv = wl->priv;
 bool change_spare = 0, special_enc;
 int ret;

 wl1271_debug(DEBUG_CRYPT, "extra spare keys before: %d",
       priv->extra_spare_key_count);

 special_enc = key_conf->cipher == WL1271_CIPHER_SUITE_GEM ||
        key_conf->cipher == WLAN_CIPHER_SUITE_TKIP;

 ret = wlcore_set_key(wl, cmd, vif, sta, key_conf);
 if (ret < 0)
  goto out;





 if (special_enc) {
  if (cmd == SET_KEY) {

   change_spare = (priv->extra_spare_key_count == 0);
   priv->extra_spare_key_count++;
  } else if (cmd == DISABLE_KEY) {

   change_spare = (priv->extra_spare_key_count == 1);
   priv->extra_spare_key_count--;
  }
 }

 wl1271_debug(DEBUG_CRYPT, "extra spare keys after: %d",
       priv->extra_spare_key_count);

 if (!change_spare)
  goto out;


 if (priv->extra_spare_key_count)
  ret = wl18xx_set_host_cfg_bitmap(wl,
     WL18XX_TX_HW_EXTRA_BLOCK_SPARE);
 else
  ret = wl18xx_set_host_cfg_bitmap(wl,
     WL18XX_TX_HW_BLOCK_SPARE);

out:
 return ret;
}
