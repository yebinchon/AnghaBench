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
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int core_enabled; int /*<<< orphan*/  vdda_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSS_HDMI_M_PCLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ hdmi ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct omap_dss_device *dssdev)
{
	int r;

	r = FUNC3(hdmi.vdda_reg);
	if (r)
		return r;

	r = FUNC1();
	if (r)
		goto err_runtime_get;

	/* Make selection of HDMI in DSS */
	FUNC0(DSS_HDMI_M_PCLK);

	hdmi.core_enabled = true;

	return 0;

err_runtime_get:
	FUNC2(hdmi.vdda_reg);

	return r;
}