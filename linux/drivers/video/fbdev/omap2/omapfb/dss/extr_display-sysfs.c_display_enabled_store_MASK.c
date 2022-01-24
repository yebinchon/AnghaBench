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
struct omap_dss_device {TYPE_1__* driver; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int (* enable ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* disable ) (struct omap_dss_device*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct omap_dss_device*) ; 
 int FUNC1 (struct omap_dss_device*) ; 
 int FUNC2 (char const*,int*) ; 
 int FUNC3 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_dss_device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct omap_dss_device *dssdev,
		const char *buf, size_t size)
{
	int r;
	bool enable;

	r = FUNC2(buf, &enable);
	if (r)
		return r;

	if (enable == FUNC1(dssdev))
		return size;

	if (FUNC0(dssdev) == false)
		return -ENODEV;

	if (enable) {
		r = dssdev->driver->enable(dssdev);
		if (r)
			return r;
	} else {
		dssdev->driver->disable(dssdev);
	}

	return size;
}