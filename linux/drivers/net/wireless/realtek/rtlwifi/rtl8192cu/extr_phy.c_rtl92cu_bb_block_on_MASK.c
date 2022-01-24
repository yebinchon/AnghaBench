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
struct TYPE_2__ {int /*<<< orphan*/  bb_mutex; } ;
struct rtl_priv {TYPE_1__ io; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCCKEN ; 
 int /*<<< orphan*/  BOFDMEN ; 
 int /*<<< orphan*/  RFPGA0_RFMOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);

	FUNC0(&rtlpriv->io.bb_mutex);
	FUNC3(hw, RFPGA0_RFMOD, BCCKEN, 0x1);
	FUNC3(hw, RFPGA0_RFMOD, BOFDMEN, 0x1);
	FUNC1(&rtlpriv->io.bb_mutex);
}