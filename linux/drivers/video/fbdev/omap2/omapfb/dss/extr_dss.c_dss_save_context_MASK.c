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
struct TYPE_2__ {int ctx_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int OMAP_DISPLAY_TYPE_SDI ; 
 int /*<<< orphan*/  OMAP_DSS_CHANNEL_LCD ; 
 int /*<<< orphan*/  PLL_CONTROL ; 
 int /*<<< orphan*/  SDI_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ dss ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC0("dss_save_context\n");

	FUNC1(CONTROL);

	if (FUNC2(OMAP_DSS_CHANNEL_LCD) &
			OMAP_DISPLAY_TYPE_SDI) {
		FUNC1(SDI_CONTROL);
		FUNC1(PLL_CONTROL);
	}

	dss.ctx_valid = true;

	FUNC0("context saved\n");
}