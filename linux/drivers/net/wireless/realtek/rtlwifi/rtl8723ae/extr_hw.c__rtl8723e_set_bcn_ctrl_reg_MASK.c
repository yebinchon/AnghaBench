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
typedef  scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_pci {scalar_t__ reg_bcn_ctrl_val; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_BCN_CTRL ; 
 struct rtl_pci* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
				       u8 set_bits, u8 clear_bits)
{
	struct rtl_pci *rtlpci = FUNC0(FUNC1(hw));
	struct rtl_priv *rtlpriv = FUNC2(hw);

	rtlpci->reg_bcn_ctrl_val |= set_bits;
	rtlpci->reg_bcn_ctrl_val &= ~clear_bits;

	FUNC3(rtlpriv, REG_BCN_CTRL, (u8) rtlpci->reg_bcn_ctrl_val);
}