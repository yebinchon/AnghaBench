
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtl_priv {TYPE_1__* intf_ops; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int (* flush ) (struct ieee80211_hw*,int ,int) ;} ;


 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int ,int) ;

__attribute__((used)) static void rtl_op_flush(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif,
    u32 queues,
    bool drop)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (rtlpriv->intf_ops->flush)
  rtlpriv->intf_ops->flush(hw, queues, drop);
}
