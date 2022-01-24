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
typedef  enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef  enum omap_overlay_caps { ____Placeholder_omap_overlay_caps } omap_overlay_caps ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int OMAP_DSS_OVL_CAP_PRE_MULT_ALPHA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC2(enum omap_plane plane,
		enum omap_overlay_caps caps, bool enable)
{
	if ((caps & OMAP_DSS_OVL_CAP_PRE_MULT_ALPHA) == 0)
		return;

	FUNC1(FUNC0(plane), enable ? 1 : 0, 28, 28);
}