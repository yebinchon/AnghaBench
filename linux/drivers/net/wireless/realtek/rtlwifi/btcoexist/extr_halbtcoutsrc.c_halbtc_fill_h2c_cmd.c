
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_6__ {int hw; } ;
struct rtl_priv {TYPE_3__ mac80211; TYPE_2__* cfg; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* fill_h2c_cmd ) (int ,int ,int ,int *) ;} ;


 int stub1 (int ,int ,int ,int *) ;

__attribute__((used)) static void halbtc_fill_h2c_cmd(void *bt_context, u8 element_id,
    u32 cmd_len, u8 *cmd_buf)
{
 struct btc_coexist *btcoexist = (struct btc_coexist *)bt_context;
 struct rtl_priv *rtlpriv = btcoexist->adapter;

 rtlpriv->cfg->ops->fill_h2c_cmd(rtlpriv->mac80211.hw, element_id,
     cmd_len, cmd_buf);
}
