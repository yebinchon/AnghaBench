
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct rtl_tcb_desc {int use_shortpreamble; scalar_t__ hw_rate; } ;
struct rtl_priv {TYPE_3__* cfg; } ;
struct TYPE_5__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {scalar_t__* maps; } ;
struct TYPE_4__ {int flags; } ;


 int IEEE80211_TX_RC_USE_SHORT_PREAMBLE ;
 size_t RTL_RC_CCK_RATE1M ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl_qurey_shortpreamble_mode(struct ieee80211_hw *hw,
       struct rtl_tcb_desc *tcb_desc,
       struct ieee80211_tx_info *info)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 rate_flag = info->control.rates[0].flags;

 tcb_desc->use_shortpreamble = 0;


 if (tcb_desc->hw_rate == rtlpriv->cfg->maps[RTL_RC_CCK_RATE1M])
  return;
 else if (rate_flag & IEEE80211_TX_RC_USE_SHORT_PREAMBLE)
  tcb_desc->use_shortpreamble = 1;

 return;
}
