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
struct platform_device {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ ddr_clk_always_on; } ;
struct dsi_data {TYPE_1__ vm_timings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 struct platform_device* FUNC6 (struct omap_dss_device*) ; 
 struct dsi_data* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct omap_dss_device*,int) ; 

__attribute__((used)) static void FUNC11(struct omap_dss_device *dssdev, int channel,
		bool enable)
{
	struct platform_device *dsidev = FUNC6(dssdev);
	struct dsi_data *dsi = FUNC7(dsidev);

	FUNC1("dsi_vc_enable_hs(%d, %d)\n", channel, enable);

	FUNC3(!FUNC4(dsidev));

	FUNC9(dsidev, channel, 0);
	FUNC8(dsidev, 0);

	FUNC2(dsidev, FUNC0(channel), enable, 9, 9);

	FUNC9(dsidev, channel, 1);
	FUNC8(dsidev, 1);

	FUNC5(dsidev);

	/* start the DDR clock by sending a NULL packet */
	if (dsi->vm_timings.ddr_clk_always_on && enable)
		FUNC10(dssdev, channel);
}