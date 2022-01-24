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
struct ieee80211_hw {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_RXDESC ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 scalar_t__ DESC_RATEMCS0 ; 
 scalar_t__ DESC_RATEMCS15 ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 

__attribute__((used)) static bool FUNC3(struct ieee80211_hw *hw, __le32 *pdesc)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	u8 rx_rate = 0;

	rx_rate = FUNC1(pdesc);

	FUNC0(rtlpriv, COMP_RXDESC, DBG_LOUD, "rx_rate=0x%02x.\n", rx_rate);

	if ((rx_rate >= DESC_RATEMCS0) && (rx_rate <= DESC_RATEMCS15))
		return true;
	return false;
}