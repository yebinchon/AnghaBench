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
typedef  int u16 ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {int core_clk_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FEAT_CORE_CLK_DIV ; 
 int FUNC2 (int,int,int) ; 
 int OMAP_DSS_CHANNEL_LCD ; 
 TYPE_1__ dispc ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(enum omap_channel channel, u16 lck_div,
		u16 pck_div)
{
	FUNC0(lck_div < 1);
	FUNC0(pck_div < 1);

	FUNC4(FUNC1(channel),
			FUNC2(lck_div, 23, 16) | FUNC2(pck_div, 7, 0));

	if (!FUNC5(FEAT_CORE_CLK_DIV) &&
			channel == OMAP_DSS_CHANNEL_LCD)
		dispc.core_clk_rate = FUNC3() / lck_div;
}