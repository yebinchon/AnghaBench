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
struct rtl_hal {int /*<<< orphan*/  version; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCN_DMA_ATIME_INT_TIME ; 
 int /*<<< orphan*/  DRIVER_EARLY_INT_TIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_BCNDMATIM ; 
 int /*<<< orphan*/  REG_BCNTCFG ; 
 int /*<<< orphan*/  REG_BCN_CTRL ; 
 int /*<<< orphan*/  REG_DRVERLYINT ; 
 int /*<<< orphan*/  REG_TBTT_PROHIBIT ; 
 struct rtl_hal* FUNC1 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct rtl_hal *rtlhal = FUNC1(rtlpriv);

	FUNC4(rtlpriv, REG_BCN_CTRL, 0x1010);

	/* TODO: Remove these magic number */
	FUNC4(rtlpriv, REG_TBTT_PROHIBIT, 0x6404);
	FUNC3(rtlpriv, REG_DRVERLYINT, DRIVER_EARLY_INT_TIME);
	FUNC3(rtlpriv, REG_BCNDMATIM, BCN_DMA_ATIME_INT_TIME);
	/* Change beacon AIFS to the largest number
	 * beacause test chip does not contension before sending beacon.
	 */
	if (FUNC0(rtlhal->version))
		FUNC4(rtlpriv, REG_BCNTCFG, 0x660F);
	else
		FUNC4(rtlpriv, REG_BCNTCFG, 0x66FF);
}