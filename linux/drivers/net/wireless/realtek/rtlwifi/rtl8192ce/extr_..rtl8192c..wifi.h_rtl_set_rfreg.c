
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct ieee80211_hw {struct rtl_priv* priv; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_rfreg ) (struct ieee80211_hw*,int,int ,int ,int ) ;} ;


 int stub1 (struct ieee80211_hw*,int,int ,int ,int ) ;

__attribute__((used)) static inline void rtl_set_rfreg(struct ieee80211_hw *hw,
     enum radio_path rfpath, u32 regaddr,
     u32 bitmask, u32 data)
{
 struct rtl_priv *rtlpriv = hw->priv;

 rtlpriv->cfg->ops->set_rfreg(hw, rfpath, regaddr, bitmask, data);
}
