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
typedef  int u32 ;
struct rtl_priv {TYPE_1__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * maps; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 size_t RWCAM ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct ieee80211_hw *hw)
{
	u32 ul_command;
	struct rtl_priv *rtlpriv = FUNC1(hw);

	ul_command = FUNC0(31) | FUNC0(30);
	FUNC2(rtlpriv, rtlpriv->cfg->maps[RWCAM], ul_command);
}