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
struct inno_hdmi_phy {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RK3228_PRE_PLL_POWER_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct inno_hdmi_phy*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inno_hdmi_phy* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	struct inno_hdmi_phy *inno = FUNC1(hw);

	FUNC0(inno, 0xe0, RK3228_PRE_PLL_POWER_DOWN, 0);
	return 0;
}