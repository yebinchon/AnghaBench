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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/ * powerindex_backup; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * power_index_reg ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);
	u8	index;

	for (index = 0; index < 6; index++)
		FUNC1(rtlpriv, power_index_reg[index],
			       rtlpriv->dm.powerindex_backup[index]);
}