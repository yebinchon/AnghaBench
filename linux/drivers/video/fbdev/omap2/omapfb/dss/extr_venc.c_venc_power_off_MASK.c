#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct omap_overlay_manager {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_3__ {struct omap_overlay_manager* manager; } ;
struct TYPE_4__ {int /*<<< orphan*/  vdda_dac_reg; TYPE_1__ output; } ;

/* Variables and functions */
 int /*<<< orphan*/  VENC_OUTPUT_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ venc ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct omap_dss_device *dssdev)
{
	struct omap_overlay_manager *mgr = venc.output.manager;

	FUNC4(VENC_OUTPUT_CONTROL, 0);
	FUNC1(0);

	FUNC0(mgr);

	FUNC2(venc.vdda_dac_reg);

	FUNC3();
}