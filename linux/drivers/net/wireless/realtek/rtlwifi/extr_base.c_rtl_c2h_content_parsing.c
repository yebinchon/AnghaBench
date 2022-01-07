
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; int data; } ;
struct TYPE_3__ {struct rtl_btc_ops* btc_ops; } ;
struct rtl_priv {TYPE_2__* cfg; TYPE_1__ btcoexist; } ;
struct rtl_hal_ops {int (* get_btc_status ) () ;int (* c2h_ra_report_handler ) (struct ieee80211_hw*,int*,int) ;} ;
struct rtl_btc_ops {int (* btc_btmpinfo_notify ) (struct rtl_priv*,int*,int) ;int (* btc_btinfo_notify ) (struct rtl_priv*,int*,int) ;} ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {struct rtl_hal_ops* ops; } ;




 int C2H_DATA_OFFSET ;




 int COMP_FW ;
 int DBG_LOUD ;
 int DBG_TRACE ;
 int GET_C2H_CMD_ID (int ) ;
 int* GET_C2H_DATA_PTR (int ) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_tx_report_handler (struct ieee80211_hw*,int*,int) ;
 int stub1 (struct ieee80211_hw*,int*,int) ;
 int stub2 () ;
 int stub3 (struct rtl_priv*,int*,int) ;
 int stub4 () ;
 int stub5 (struct rtl_priv*,int*,int) ;

__attribute__((used)) static void rtl_c2h_content_parsing(struct ieee80211_hw *hw,
        struct sk_buff *skb)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal_ops *hal_ops = rtlpriv->cfg->ops;
 const struct rtl_btc_ops *btc_ops = rtlpriv->btcoexist.btc_ops;
 u8 cmd_id, cmd_len;
 u8 *cmd_buf = ((void*)0);

 cmd_id = GET_C2H_CMD_ID(skb->data);
 cmd_len = skb->len - C2H_DATA_OFFSET;
 cmd_buf = GET_C2H_DATA_PTR(skb->data);

 switch (cmd_id) {
 case 131:
  RT_TRACE(rtlpriv, COMP_FW, DBG_LOUD, "[C2H], C2H_DBG!!\n");
  break;
 case 129:
  RT_TRACE(rtlpriv, COMP_FW, DBG_TRACE,
    "[C2H], C2H_TXBF!!\n");
  break;
 case 128:
  rtl_tx_report_handler(hw, cmd_buf, cmd_len);
  break;
 case 130:
  if (hal_ops->c2h_ra_report_handler)
   hal_ops->c2h_ra_report_handler(hw, cmd_buf, cmd_len);
  break;
 case 133:
  RT_TRACE(rtlpriv, COMP_FW, DBG_TRACE,
    "[C2H], C2H_BT_INFO!!\n");
  if (rtlpriv->cfg->ops->get_btc_status())
   btc_ops->btc_btinfo_notify(rtlpriv, cmd_buf, cmd_len);
  break;
 case 132:
  RT_TRACE(rtlpriv, COMP_FW, DBG_TRACE,
    "[C2H], C2H_BT_MP!!\n");
  if (rtlpriv->cfg->ops->get_btc_status())
   btc_ops->btc_btmpinfo_notify(rtlpriv, cmd_buf, cmd_len);
  break;
 default:
  RT_TRACE(rtlpriv, COMP_FW, DBG_TRACE,
    "[C2H], Unknown packet!! cmd_id(%#X)!\n", cmd_id);
  break;
 }
}
