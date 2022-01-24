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
struct rtl_priv {int dummy; } ;
struct rtl_pci {int /*<<< orphan*/  receive_config; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int COMP_INIT ; 
 int COMP_TURBO ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  RCR_AAP ; 
 int /*<<< orphan*/  REG_RCR ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 struct rtl_pci* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct ieee80211_hw *hw,
				bool allow_all_da, bool write_into_reg)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_pci *rtlpci = FUNC1(FUNC2(hw));

	if (allow_all_da)	/* Set BIT0 */
		rtlpci->receive_config |= RCR_AAP;
	else			/* Clear BIT0 */
		rtlpci->receive_config &= ~RCR_AAP;

	if (write_into_reg)
		FUNC4(rtlpriv, REG_RCR, rtlpci->receive_config);

	FUNC0(rtlpriv, COMP_TURBO | COMP_INIT, DBG_LOUD,
		 "receive_config=0x%08X, write_into_reg=%d\n",
		  rtlpci->receive_config, write_into_reg);
}