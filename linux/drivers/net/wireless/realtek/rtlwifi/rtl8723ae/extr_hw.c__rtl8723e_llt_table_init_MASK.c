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
 int FUNC0 (int) ; 
 int REG_CR ; 
 int REG_PBP ; 
 int REG_RQPN ; 
 int REG_RQPN_NPQ ; 
 int REG_RX_DRVINFO_SZ ; 
 int REG_TDECTRL ; 
 int REG_TRXFF_BNDY ; 
 int REG_TXPKTBUF_BCNQ_BDNY ; 
 int REG_TXPKTBUF_MGQ_BDNY ; 
 int FUNC1 (struct ieee80211_hw*,int,int) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int FUNC3 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl_priv*,int,int) ; 

__attribute__((used)) static bool FUNC7(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	unsigned short i;
	u8 txpktbuf_bndy;
	u8 maxpage;
	bool status;
	u8 ubyte;

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

	FUNC4(rtlpriv, REG_CR, 0x8B);

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

	rtl_write_dword(rtlpriv, REG_RQPN, 0x80ac1c29);
	rtl_write_byte(rtlpriv, REG_RQPN_NPQ, 0x03);
#endif

	FUNC5(rtlpriv, REG_TRXFF_BNDY, (0x27FF0000 | txpktbuf_bndy));
	FUNC4(rtlpriv, REG_TDECTRL + 1, txpktbuf_bndy);

	FUNC4(rtlpriv, REG_TXPKTBUF_BCNQ_BDNY, txpktbuf_bndy);
	FUNC4(rtlpriv, REG_TXPKTBUF_MGQ_BDNY, txpktbuf_bndy);

	FUNC4(rtlpriv, 0x45D, txpktbuf_bndy);
	FUNC4(rtlpriv, REG_PBP, 0x11);
	FUNC4(rtlpriv, REG_RX_DRVINFO_SZ, 0x4);

	for (i = 0; i < (txpktbuf_bndy - 1); i++) {
		status = FUNC1(hw, i, i + 1);
		if (true != status)
			return status;
	}

	status = FUNC1(hw, (txpktbuf_bndy - 1), 0xFF);
	if (true != status)
		return status;

	for (i = txpktbuf_bndy; i < maxpage; i++) {
		status = FUNC1(hw, i, (i + 1));
		if (true != status)
			return status;
	}

	status = FUNC1(hw, maxpage, txpktbuf_bndy);
	if (true != status)
		return status;

	FUNC4(rtlpriv, REG_CR, 0xff);
	ubyte = FUNC3(rtlpriv, REG_RQPN + 3);
	FUNC4(rtlpriv, REG_RQPN + 3, ubyte | FUNC0(7));

	return true;
}