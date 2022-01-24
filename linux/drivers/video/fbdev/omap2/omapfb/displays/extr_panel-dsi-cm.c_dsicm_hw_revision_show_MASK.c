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
typedef  int u8 ;
struct panel_drv_data {int /*<<< orphan*/  lock; scalar_t__ enabled; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* dsi; } ;
struct omap_dss_device {TYPE_2__ ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* bus_unlock ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* bus_lock ) (struct omap_dss_device*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct panel_drv_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct panel_drv_data*,int*,int*,int*) ; 
 int FUNC2 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_dss_device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct panel_drv_data *ddata = FUNC0(dev);
	struct omap_dss_device *in = ddata->in;
	u8 id1, id2, id3;
	int r;

	FUNC3(&ddata->lock);

	if (ddata->enabled) {
		in->ops.dsi->bus_lock(in);

		r = FUNC2(ddata);
		if (!r)
			r = FUNC1(ddata, &id1, &id2, &id3);

		in->ops.dsi->bus_unlock(in);
	} else {
		r = -ENODEV;
	}

	FUNC4(&ddata->lock);

	if (r)
		return r;

	return FUNC5(buf, PAGE_SIZE, "%02x.%02x.%02x\n", id1, id2, id3);
}