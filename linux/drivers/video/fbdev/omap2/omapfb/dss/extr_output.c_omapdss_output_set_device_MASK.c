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
struct omap_dss_device {scalar_t__ output_type; scalar_t__ type; struct omap_dss_device* src; struct omap_dss_device* dst; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  output_lock ; 

int FUNC3(struct omap_dss_device *out,
		struct omap_dss_device *dssdev)
{
	int r;

	FUNC1(&output_lock);

	if (out->dst) {
		FUNC0("output already has device %s connected to it\n",
			out->dst->name);
		r = -EINVAL;
		goto err;
	}

	if (out->output_type != dssdev->type) {
		FUNC0("output type and display type don't match\n");
		r = -EINVAL;
		goto err;
	}

	out->dst = dssdev;
	dssdev->src = out;

	FUNC2(&output_lock);

	return 0;
err:
	FUNC2(&output_lock);

	return r;
}