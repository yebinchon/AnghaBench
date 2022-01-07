
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtl_stats {int signalstrength; scalar_t__ packet_toself; int is_cck; int rssi; scalar_t__ packet_beacon; } ;
struct TYPE_3__ {size_t total_num; int* elements; size_t index; int total_val; } ;
struct TYPE_4__ {int signal_strength; TYPE_1__ ui_rssi; int rssi_calculate_cnt; } ;
struct rtl_priv {TYPE_2__ stats; } ;
struct ieee80211_hw {int dummy; } ;


 size_t PHY_RSSI_SLID_WIN_MAX ;
 int _rtl92de_translate_todbm (struct ieee80211_hw*,int ) ;
 int rtl92d_loop_over_paths (struct ieee80211_hw*,struct rtl_stats*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92de_process_ui_rssi(struct ieee80211_hw *hw,
         struct rtl_stats *pstats)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 last_rssi, tmpval;

 if (pstats->packet_toself || pstats->packet_beacon) {
  rtlpriv->stats.rssi_calculate_cnt++;
  if (rtlpriv->stats.ui_rssi.total_num++ >=
      PHY_RSSI_SLID_WIN_MAX) {
   rtlpriv->stats.ui_rssi.total_num =
       PHY_RSSI_SLID_WIN_MAX;
   last_rssi = rtlpriv->stats.ui_rssi.elements[
    rtlpriv->stats.ui_rssi.index];
   rtlpriv->stats.ui_rssi.total_val -= last_rssi;
  }
  rtlpriv->stats.ui_rssi.total_val += pstats->signalstrength;
  rtlpriv->stats.ui_rssi.elements
   [rtlpriv->stats.ui_rssi.index++] =
   pstats->signalstrength;
  if (rtlpriv->stats.ui_rssi.index >= PHY_RSSI_SLID_WIN_MAX)
   rtlpriv->stats.ui_rssi.index = 0;
  tmpval = rtlpriv->stats.ui_rssi.total_val /
   rtlpriv->stats.ui_rssi.total_num;
  rtlpriv->stats.signal_strength = _rtl92de_translate_todbm(hw,
   (u8) tmpval);
  pstats->rssi = rtlpriv->stats.signal_strength;
 }
 if (!pstats->is_cck && pstats->packet_toself)
  rtl92d_loop_over_paths(hw, pstats);
}
