#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {struct rtl_btc_ops* btc_ops; } ;
struct rtl_priv {TYPE_2__* cfg; TYPE_1__ btcoexist; } ;
struct rtl_hal_ops {int /*<<< orphan*/  (* get_btc_status ) () ;int /*<<< orphan*/  (* c2h_ra_report_handler ) (struct ieee80211_hw*,int*,int) ;} ;
struct rtl_btc_ops {int /*<<< orphan*/  (* btc_btmpinfo_notify ) (struct rtl_priv*,int*,int) ;int /*<<< orphan*/  (* btc_btinfo_notify ) (struct rtl_priv*,int*,int) ;} ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {struct rtl_hal_ops* ops; } ;

/* Variables and functions */
#define  C2H_BT_INFO 133 
#define  C2H_BT_MP 132 
 int C2H_DATA_OFFSET ; 
#define  C2H_DBG 131 
#define  C2H_RA_RPT 130 
#define  C2H_TXBF 129 
#define  C2H_TX_REPORT 128 
 int /*<<< orphan*/  COMP_FW ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct rtl_priv*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct rtl_priv*,int*,int) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_hw *hw,
				    struct sk_buff *skb)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_hal_ops *hal_ops = rtlpriv->cfg->ops;
	const struct rtl_btc_ops *btc_ops = rtlpriv->btcoexist.btc_ops;
	u8 cmd_id, cmd_len;
	u8 *cmd_buf = NULL;

	cmd_id = FUNC0(skb->data);
	cmd_len = skb->len - C2H_DATA_OFFSET;
	cmd_buf = FUNC1(skb->data);

	switch (cmd_id) {
	case C2H_DBG:
		FUNC2(rtlpriv, COMP_FW, DBG_LOUD, "[C2H], C2H_DBG!!\n");
		break;
	case C2H_TXBF:
		FUNC2(rtlpriv, COMP_FW, DBG_TRACE,
			 "[C2H], C2H_TXBF!!\n");
		break;
	case C2H_TX_REPORT:
		FUNC4(hw, cmd_buf, cmd_len);
		break;
	case C2H_RA_RPT:
		if (hal_ops->c2h_ra_report_handler)
			hal_ops->c2h_ra_report_handler(hw, cmd_buf, cmd_len);
		break;
	case C2H_BT_INFO:
		FUNC2(rtlpriv, COMP_FW, DBG_TRACE,
			 "[C2H], C2H_BT_INFO!!\n");
		if (rtlpriv->cfg->ops->get_btc_status())
			btc_ops->btc_btinfo_notify(rtlpriv, cmd_buf, cmd_len);
		break;
	case C2H_BT_MP:
		FUNC2(rtlpriv, COMP_FW, DBG_TRACE,
			 "[C2H], C2H_BT_MP!!\n");
		if (rtlpriv->cfg->ops->get_btc_status())
			btc_ops->btc_btmpinfo_notify(rtlpriv, cmd_buf, cmd_len);
		break;
	default:
		FUNC2(rtlpriv, COMP_FW, DBG_TRACE,
			 "[C2H], Unknown packet!! cmd_id(%#X)!\n", cmd_id);
		break;
	}
}