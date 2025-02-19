
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wl1271 {int quirks; scalar_t__ reg_ch_conf_pending; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int WL1271_MAX_CHANNELS ;
 int WLCORE_QUIRK_REGDOMAIN_CONF ;
 int __set_bit_le (int,long*) ;
 int wlcore_get_reg_conf_ch_idx (int,int ) ;

void wlcore_set_pending_regdomain_ch(struct wl1271 *wl, u16 channel,
         enum nl80211_band band)
{
 int ch_bit_idx = 0;

 if (!(wl->quirks & WLCORE_QUIRK_REGDOMAIN_CONF))
  return;

 ch_bit_idx = wlcore_get_reg_conf_ch_idx(band, channel);

 if (ch_bit_idx >= 0 && ch_bit_idx <= WL1271_MAX_CHANNELS)
  __set_bit_le(ch_bit_idx, (long *)wl->reg_ch_conf_pending);
}
