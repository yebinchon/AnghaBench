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
struct panel_drv_data {int /*<<< orphan*/  i2c_adapter; } ;
struct omap_dss_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ) ; 
 struct panel_drv_data* FUNC1 (struct omap_dss_device*) ; 

__attribute__((used)) static bool FUNC2(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC1(dssdev);
	unsigned char out;
	int r;

	if (!ddata->i2c_adapter)
		return true;

	r = FUNC0(ddata->i2c_adapter, &out, 1, 0);

	return r == 0;
}