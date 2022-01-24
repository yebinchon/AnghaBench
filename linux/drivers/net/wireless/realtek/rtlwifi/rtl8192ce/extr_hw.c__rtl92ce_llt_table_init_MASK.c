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
 int REG_PBP ; 
 int /*<<< orphan*/  REG_RQPN ; 
 int REG_RQPN_NPQ ; 
 int REG_RX_DRVINFO_SZ ; 
 int REG_TDECTRL ; 
 int /*<<< orphan*/  REG_TRXFF_BNDY ; 
 int REG_TXPKTBUF_BCNQ_BDNY ; 
 int REG_TXPKTBUF_MGQ_BDNY ; 
 int FUNC0 (struct ieee80211_hw*,int,int) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int,int) ; 

__attribute__((used)) static bool FUNC5(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	unsigned short i;
	u8 txpktbuf_bndy;
	u8 maxpage;
	bool status;

#if LLT_CONFIG == 1
	maxpage = 255;
	txpktbuf_bndy = 252;
#elif LLT_CONFIG == 2
	maxpage = 127;
	txpktbuf_bndy = 124;
#elif LLT_CONFIG == 3
	maxpage = 255;
	txpktbuf_bndy = 174;
#elif LLT_CONFIG == 4
	maxpage = 255;
	txpktbuf_bndy = 246;
#elif LLT_CONFIG == 5
	maxpage = 255;
	txpktbuf_bndy = 246;
#endif

#if LLT_CONFIG == 1
	rtl_write_byte(rtlpriv, REG_RQPN_NPQ, 0x1c);
	rtl_write_dword(rtlpriv, REG_RQPN, 0x80a71c1c);
#elif LLT_CONFIG == 2
	rtl_write_dword(rtlpriv, REG_RQPN, 0x845B1010);
#elif LLT_CONFIG == 3
	rtl_write_dword(rtlpriv, REG_RQPN, 0x84838484);
#elif LLT_CONFIG == 4
	rtl_write_dword(rtlpriv, REG_RQPN, 0x80bd1c1c);
#elif LLT_CONFIG == 5
	rtl_write_word(rtlpriv, REG_RQPN_NPQ, 0x0000);

	rtl_write_dword(rtlpriv, REG_RQPN, 0x80b01c29);
#endif

	FUNC3(rtlpriv, REG_TRXFF_BNDY, (0x27FF0000 | txpktbuf_bndy));
	FUNC2(rtlpriv, REG_TDECTRL + 1, txpktbuf_bndy);

	FUNC2(rtlpriv, REG_TXPKTBUF_BCNQ_BDNY, txpktbuf_bndy);
	FUNC2(rtlpriv, REG_TXPKTBUF_MGQ_BDNY, txpktbuf_bndy);

	FUNC2(rtlpriv, 0x45D, txpktbuf_bndy);
	FUNC2(rtlpriv, REG_PBP, 0x11);
	FUNC2(rtlpriv, REG_RX_DRVINFO_SZ, 0x4);

	for (i = 0; i < (txpktbuf_bndy - 1); i++) {
		status = FUNC0(hw, i, i + 1);
		if (true != status)
			return status;
	}

	status = FUNC0(hw, (txpktbuf_bndy - 1), 0xFF);
	if (true != status)
		return status;

	for (i = txpktbuf_bndy; i < maxpage; i++) {
		status = FUNC0(hw, i, (i + 1));
		if (true != status)
			return status;
	}

	status = FUNC0(hw, maxpage, txpktbuf_bndy);
	if (true != status)
		return status;

	return true;
}