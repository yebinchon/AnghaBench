
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dm_type; int useramask; } ;
struct rate_adaptive {void* pre_ratr_state; void* ratr_state; } ;
struct rtl_priv {TYPE_1__ dm; struct rate_adaptive ra; } ;
struct ieee80211_hw {int dummy; } ;


 void* DM_RATR_STA_INIT ;
 scalar_t__ DM_TYPE_BYDRIVER ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl92d_dm_init_rate_adaptive_mask(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rate_adaptive *ra = &(rtlpriv->ra);

 ra->ratr_state = DM_RATR_STA_INIT;
 ra->pre_ratr_state = DM_RATR_STA_INIT;
 if (rtlpriv->dm.dm_type == DM_TYPE_BYDRIVER)
  rtlpriv->dm.useramask = 1;
 else
  rtlpriv->dm.useramask = 0;
}
