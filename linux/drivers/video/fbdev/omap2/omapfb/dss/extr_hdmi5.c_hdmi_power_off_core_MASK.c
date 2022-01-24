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
 TYPE_1__ hdmi ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct omap_dss_device *dssdev)
{
	hdmi.core_enabled = false;

	FUNC0();
	FUNC1(hdmi.vdda_reg);
}