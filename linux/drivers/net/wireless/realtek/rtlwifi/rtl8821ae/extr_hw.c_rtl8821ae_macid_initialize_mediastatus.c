
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_hw_reg ) (struct ieee80211_hw*,int ,int*) ;} ;


 int COMP_INIT ;
 int DBG_LOUD ;
 int HW_VAR_H2C_FW_MEDIASTATUSRPT ;
 int MAC_ID_STATIC_FOR_BROADCAST_MULTICAST ;
 int MAC_ID_STATIC_FOR_BT_CLIENT_END ;
 int RT_MEDIA_CONNECT ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int ,int*) ;

__attribute__((used)) static void rtl8821ae_macid_initialize_mediastatus(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 media_rpt[4] = {RT_MEDIA_CONNECT, 1,
  MAC_ID_STATIC_FOR_BROADCAST_MULTICAST,
  MAC_ID_STATIC_FOR_BT_CLIENT_END};

 rtlpriv->cfg->ops->set_hw_reg(hw,
  HW_VAR_H2C_FW_MEDIASTATUSRPT, media_rpt);

 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
   "Initialize MacId media status: from %d to %d\n",
   MAC_ID_STATIC_FOR_BROADCAST_MULTICAST,
   MAC_ID_STATIC_FOR_BT_CLIENT_END);
}
