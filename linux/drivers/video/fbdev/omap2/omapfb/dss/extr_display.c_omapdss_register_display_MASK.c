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
struct omap_dss_driver {int /*<<< orphan*/ * get_timings; int /*<<< orphan*/ * get_recommended_bpp; int /*<<< orphan*/ * get_resolution; } ;
struct omap_dss_device {int /*<<< orphan*/  panel_list; int /*<<< orphan*/ * alias; int /*<<< orphan*/ * name; TYPE_1__* dev; struct omap_dss_driver* driver; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  disp_num_counter ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * omapdss_default_get_recommended_bpp ; 
 int /*<<< orphan*/ * omapdss_default_get_resolution ; 
 int /*<<< orphan*/ * omapdss_default_get_timings ; 
 int /*<<< orphan*/  panel_list ; 
 int /*<<< orphan*/  panel_list_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*,int) ; 

int FUNC6(struct omap_dss_device *dssdev)
{
	struct omap_dss_driver *drv = dssdev->driver;
	int id;

	/*
	 * Note: this presumes all the displays are either using DT or non-DT,
	 * which normally should be the case. This also presumes that all
	 * displays either have an DT alias, or none has.
	 */

	if (dssdev->dev->of_node) {
		id = FUNC3(dssdev->dev->of_node, "display");

		if (id < 0)
			id = disp_num_counter++;
	} else {
		id = disp_num_counter++;
	}

	FUNC5(dssdev->alias, sizeof(dssdev->alias), "display%d", id);

	/* Use 'label' property for name, if it exists */
	if (dssdev->dev->of_node)
		FUNC4(dssdev->dev->of_node, "label",
			&dssdev->name);

	if (dssdev->name == NULL)
		dssdev->name = dssdev->alias;

	if (drv && drv->get_resolution == NULL)
		drv->get_resolution = omapdss_default_get_resolution;
	if (drv && drv->get_recommended_bpp == NULL)
		drv->get_recommended_bpp = omapdss_default_get_recommended_bpp;
	if (drv && drv->get_timings == NULL)
		drv->get_timings = omapdss_default_get_timings;

	FUNC1(&panel_list_mutex);
	FUNC0(&dssdev->panel_list, &panel_list);
	FUNC2(&panel_list_mutex);
	return 0;
}