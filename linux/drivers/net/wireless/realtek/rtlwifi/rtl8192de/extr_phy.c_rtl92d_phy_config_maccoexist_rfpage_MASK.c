#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int macphymode; } ;
struct rtl_priv {TYPE_1__ rtlhal; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
#define  DUALMAC_DUALPHY 130 
#define  DUALMAC_SINGLEPHY 129 
 int /*<<< orphan*/  REG_DMC ; 
 int /*<<< orphan*/  REG_RX_PKT_LIMIT ; 
 int /*<<< orphan*/  REG_TRXFF_BNDY ; 
#define  SINGLEMAC_SINGLEPHY 128 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);

	switch (rtlpriv->rtlhal.macphymode) {
	case DUALMAC_DUALPHY:
		FUNC1(rtlpriv, REG_DMC, 0x0);
		FUNC1(rtlpriv, REG_RX_PKT_LIMIT, 0x08);
		FUNC2(rtlpriv, REG_TRXFF_BNDY + 2, 0x13ff);
		break;
	case DUALMAC_SINGLEPHY:
		FUNC1(rtlpriv, REG_DMC, 0xf8);
		FUNC1(rtlpriv, REG_RX_PKT_LIMIT, 0x08);
		FUNC2(rtlpriv, REG_TRXFF_BNDY + 2, 0x13ff);
		break;
	case SINGLEMAC_SINGLEPHY:
		FUNC1(rtlpriv, REG_DMC, 0x0);
		FUNC1(rtlpriv, REG_RX_PKT_LIMIT, 0x10);
		FUNC2(rtlpriv, (REG_TRXFF_BNDY + 2), 0x27FF);
		break;
	default:
		break;
	}
}