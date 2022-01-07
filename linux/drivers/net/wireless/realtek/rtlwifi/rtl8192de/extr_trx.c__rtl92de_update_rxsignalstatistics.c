
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_stats {int recvsignalpower; } ;
struct TYPE_2__ {int recv_signal_power; } ;
struct rtl_priv {TYPE_1__ stats; } ;
struct ieee80211_hw {int dummy; } ;


 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92de_update_rxsignalstatistics(struct ieee80211_hw *hw,
            struct rtl_stats *pstats)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 int weighting = 0;

 if (rtlpriv->stats.recv_signal_power == 0)
  rtlpriv->stats.recv_signal_power = pstats->recvsignalpower;
 if (pstats->recvsignalpower > rtlpriv->stats.recv_signal_power)
  weighting = 5;
 else if (pstats->recvsignalpower < rtlpriv->stats.recv_signal_power)
  weighting = (-5);
 rtlpriv->stats.recv_signal_power = (rtlpriv->stats.recv_signal_power *
  5 + pstats->recvsignalpower + weighting) / 6;
}
