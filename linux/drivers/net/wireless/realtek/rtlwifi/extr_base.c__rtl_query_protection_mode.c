
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct rtl_tcb_desc {int rts_stbc; int cts_enable; int rts_bw; int rts_use_shortpreamble; int rts_use_shortgi; int rts_enable; int rts_rate; scalar_t__ rts_sc; } ;
struct rtl_priv {TYPE_3__* cfg; } ;
struct TYPE_5__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {int * maps; } ;
struct TYPE_4__ {int flags; } ;


 int IEEE80211_TX_RC_USE_CTS_PROTECT ;
 int IEEE80211_TX_RC_USE_RTS_CTS ;
 size_t RTL_RC_OFDM_RATE24M ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl_query_protection_mode(struct ieee80211_hw *hw,
           struct rtl_tcb_desc *tcb_desc,
           struct ieee80211_tx_info *info)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 rate_flag = info->control.rates[0].flags;


 tcb_desc->rts_stbc = 0;
 tcb_desc->cts_enable = 0;
 tcb_desc->rts_sc = 0;
 tcb_desc->rts_bw = 0;
 tcb_desc->rts_use_shortpreamble = 0;
 tcb_desc->rts_use_shortgi = 0;

 if (rate_flag & IEEE80211_TX_RC_USE_CTS_PROTECT) {

  tcb_desc->rts_enable = 1;
  tcb_desc->cts_enable = 1;
  tcb_desc->rts_rate = rtlpriv->cfg->maps[RTL_RC_OFDM_RATE24M];
 } else if (rate_flag & IEEE80211_TX_RC_USE_RTS_CTS) {

  tcb_desc->rts_enable = 1;
  tcb_desc->rts_rate = rtlpriv->cfg->maps[RTL_RC_OFDM_RATE24M];
 }
}
