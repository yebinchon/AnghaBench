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
struct omap_overlay_manager {int (* apply ) (struct omap_overlay_manager*) ;struct omap_dss_device* (* get_device ) (struct omap_overlay_manager*) ;} ;
struct omap_dss_device {TYPE_1__* driver; int /*<<< orphan*/  name; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int (* connect ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* disconnect ) (struct omap_dss_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  manager_display_match ; 
 struct omap_dss_device* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dss_device*) ; 
 scalar_t__ FUNC4 (struct omap_dss_device*) ; 
 scalar_t__ FUNC5 (struct omap_dss_device*) ; 
 struct omap_dss_device* FUNC6 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_dss_device*) ; 
 int FUNC8 (struct omap_dss_device*) ; 
 struct omap_dss_device* FUNC9 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC10 (struct omap_dss_device*) ; 
 int FUNC11 (struct omap_overlay_manager*) ; 

__attribute__((used)) static ssize_t FUNC12(struct omap_overlay_manager *mgr,
		const char *buf, size_t size)
{
	int r = 0;
	size_t len = size;
	struct omap_dss_device *dssdev = NULL;
	struct omap_dss_device *old_dssdev;

	if (buf[size-1] == '\n')
		--len;

	if (len > 0)
		dssdev = FUNC2((void *)buf,
			manager_display_match);

	if (len > 0 && dssdev == NULL)
		return -EINVAL;

	if (dssdev) {
		FUNC0("display %s found\n", dssdev->name);

		if (FUNC4(dssdev)) {
			FUNC1("new display is already connected\n");
			r = -EINVAL;
			goto put_device;
		}

		if (FUNC5(dssdev)) {
			FUNC1("new display is not disabled\n");
			r = -EINVAL;
			goto put_device;
		}
	}

	old_dssdev = mgr->get_device(mgr);
	if (old_dssdev) {
		if (FUNC5(old_dssdev)) {
			FUNC1("old display is not disabled\n");
			r = -EINVAL;
			goto put_device;
		}

		old_dssdev->driver->disconnect(old_dssdev);
	}

	if (dssdev) {
		r = dssdev->driver->connect(dssdev);
		if (r) {
			FUNC1("failed to connect new device\n");
			goto put_device;
		}

		old_dssdev = mgr->get_device(mgr);
		if (old_dssdev != dssdev) {
			FUNC1("failed to connect device to this manager\n");
			dssdev->driver->disconnect(dssdev);
			goto put_device;
		}

		r = mgr->apply(mgr);
		if (r) {
			FUNC1("failed to apply dispc config\n");
			goto put_device;
		}
	}

put_device:
	if (dssdev)
		FUNC3(dssdev);

	return r ? r : size;
}