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
struct panel_drv_data {unsigned long ulps_timeout; int /*<<< orphan*/  lock; scalar_t__ enabled; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* dsi; } ;
struct omap_dss_device {TYPE_2__ ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* bus_unlock ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* bus_lock ) (struct omap_dss_device*) ;} ;

/* Variables and functions */
 struct panel_drv_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct panel_drv_data*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_dss_device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct panel_drv_data *ddata = FUNC0(dev);
	struct omap_dss_device *in = ddata->in;
	unsigned long t;
	int r;

	r = FUNC2(buf, 0, &t);
	if (r)
		return r;

	FUNC3(&ddata->lock);
	ddata->ulps_timeout = t;

	if (ddata->enabled) {
		/* dsicm_wake_up will restart the timer */
		in->ops.dsi->bus_lock(in);
		r = FUNC1(ddata);
		in->ops.dsi->bus_unlock(in);
	}

	FUNC4(&ddata->lock);

	if (r)
		return r;

	return count;
}