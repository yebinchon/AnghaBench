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
struct omap_dss_device {scalar_t__ manager; struct omap_dss_device* dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dss_device*) ; 

__attribute__((used)) static void FUNC3(struct omap_dss_device *dssdev,
		struct omap_dss_device *dst)
{
	FUNC0(dst != dssdev->dst);

	if (dst != dssdev->dst)
		return;

	FUNC2(dssdev);

	if (dssdev->manager)
		FUNC1(dssdev->manager, dssdev);
}