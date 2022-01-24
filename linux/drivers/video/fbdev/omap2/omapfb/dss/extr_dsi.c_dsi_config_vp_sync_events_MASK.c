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
typedef  int /*<<< orphan*/  u32 ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ trans_mode; } ;
struct dsi_data {TYPE_1__ vm_timings; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ OMAP_DSS_DSI_PULSE_MODE ; 
 struct dsi_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct platform_device *dsidev)
{
	struct dsi_data *dsi = FUNC1(dsidev);
	bool sync_end;
	u32 r;

	if (dsi->vm_timings.trans_mode == OMAP_DSS_DSI_PULSE_MODE)
		sync_end = true;
	else
		sync_end = false;

	r = FUNC2(dsidev, DSI_CTRL);
	r = FUNC0(r, 1, 9, 9);		/* VP_DE_POL */
	r = FUNC0(r, 1, 10, 10);		/* VP_HSYNC_POL */
	r = FUNC0(r, 1, 11, 11);		/* VP_VSYNC_POL */
	r = FUNC0(r, 1, 15, 15);		/* VP_VSYNC_START */
	r = FUNC0(r, sync_end, 16, 16);	/* VP_VSYNC_END */
	r = FUNC0(r, 1, 17, 17);		/* VP_HSYNC_START */
	r = FUNC0(r, sync_end, 18, 18);	/* VP_HSYNC_END */
	FUNC3(dsidev, DSI_CTRL, r);
}