
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cck_and_rw_pagea_lock; } ;
struct TYPE_3__ {int interfaceindex; } ;
struct rtl_priv {TYPE_2__ locks; TYPE_1__ rtlhal; } ;
struct ieee80211_hw {int dummy; } ;


 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void rtl92d_release_cckandrw_pagea_ctl(struct ieee80211_hw *hw,
           unsigned long *flag)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (rtlpriv->rtlhal.interfaceindex == 1)
  spin_unlock_irqrestore(&rtlpriv->locks.cck_and_rw_pagea_lock,
   *flag);
}
