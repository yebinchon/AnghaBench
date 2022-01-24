#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int REG_AUTO_LLT ; 
 int REG_BCNQ1_BDNY ; 
 int REG_BCNQ_BDNY ; 
 int REG_DWBCN0_CTRL ; 
 int REG_DWBCN1_CTRL ; 
 int REG_MGQ_BDNY ; 
 int REG_PBP ; 
 int /*<<< orphan*/  REG_RQPN ; 
 int REG_RX_DRVINFO_SZ ; 
 int REG_TRXFF_BNDY ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int FUNC2 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static bool FUNC7(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	u8 txpktbuf_bndy;
	u8 u8tmp, testcnt = 0;

	txpktbuf_bndy = 0xF7;

	FUNC4(rtlpriv, REG_RQPN, 0x80E60808);

	FUNC3(rtlpriv, REG_TRXFF_BNDY, txpktbuf_bndy);
	FUNC5(rtlpriv, REG_TRXFF_BNDY + 2, 0x3d00 - 1);

	FUNC3(rtlpriv, REG_DWBCN0_CTRL + 1, txpktbuf_bndy);
	FUNC3(rtlpriv, REG_DWBCN1_CTRL + 1, txpktbuf_bndy);

	FUNC3(rtlpriv, REG_BCNQ_BDNY, txpktbuf_bndy);
	FUNC3(rtlpriv, REG_BCNQ1_BDNY, txpktbuf_bndy);

	FUNC3(rtlpriv, REG_MGQ_BDNY, txpktbuf_bndy);
	FUNC3(rtlpriv, 0x45D, txpktbuf_bndy);

	FUNC3(rtlpriv, REG_PBP, 0x31);
	FUNC3(rtlpriv, REG_RX_DRVINFO_SZ, 0x4);

	u8tmp = FUNC2(rtlpriv, REG_AUTO_LLT + 2);
	FUNC3(rtlpriv, REG_AUTO_LLT + 2, u8tmp | FUNC0(0));

	while (u8tmp & FUNC0(0)) {
		u8tmp = FUNC2(rtlpriv, REG_AUTO_LLT + 2);
		FUNC6(10);
		testcnt++;
		if (testcnt > 10)
			break;
	}

	return true;
}