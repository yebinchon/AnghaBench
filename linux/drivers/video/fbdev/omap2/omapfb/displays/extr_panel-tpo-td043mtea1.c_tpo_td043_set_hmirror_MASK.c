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
struct panel_drv_data {int hmirror; int /*<<< orphan*/  vmirror; int /*<<< orphan*/  spi; } ;
struct omap_dss_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct panel_drv_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct omap_dss_device *dssdev, bool enable)
{
	struct panel_drv_data *ddata = FUNC0(dssdev->dev);

	ddata->hmirror = enable;
	return FUNC1(ddata->spi, ddata->hmirror,
			ddata->vmirror);
}