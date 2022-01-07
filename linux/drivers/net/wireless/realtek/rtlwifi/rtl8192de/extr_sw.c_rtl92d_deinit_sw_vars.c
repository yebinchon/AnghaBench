
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int * skb_waitq; } ;
struct TYPE_3__ {int * pfirmware; } ;
struct rtl_priv {TYPE_2__ mac80211; TYPE_1__ rtlhal; } ;
struct ieee80211_hw {int dummy; } ;


 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int skb_queue_purge (int *) ;
 int vfree (int *) ;

__attribute__((used)) static void rtl92d_deinit_sw_vars(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 tid;

 if (rtlpriv->rtlhal.pfirmware) {
  vfree(rtlpriv->rtlhal.pfirmware);
  rtlpriv->rtlhal.pfirmware = ((void*)0);
 }
 for (tid = 0; tid < 8; tid++)
  skb_queue_purge(&rtlpriv->mac80211.skb_waitq[tid]);
}
