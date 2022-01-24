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
struct omap_overlay_manager {int dummy; } ;
struct omap_dss_device {struct omap_overlay_manager* manager; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap_dss_device*) ; 
 struct omap_dss_device* FUNC1 (struct omap_dss_device*) ; 

struct omap_overlay_manager *FUNC2(struct omap_dss_device *dssdev)
{
	struct omap_dss_device *out;
	struct omap_overlay_manager *mgr;

	out = FUNC1(dssdev);

	if (out == NULL)
		return NULL;

	mgr = out->manager;

	FUNC0(out);

	return mgr;
}