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
struct omapfb2_device {int num_overlays; int num_fbs; int num_displays; int /*<<< orphan*/  dev; int /*<<< orphan*/ * auto_update_wq; TYPE_1__* displays; int /*<<< orphan*/ * fbs; struct omap_overlay** overlays; } ;
struct omap_overlay {int /*<<< orphan*/  (* unset_manager ) (struct omap_overlay*) ;scalar_t__ manager; int /*<<< orphan*/  (* disable ) (struct omap_overlay*) ;} ;
struct omap_dss_device {scalar_t__ state; TYPE_2__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* disconnect ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* disable ) (struct omap_dss_device*) ;} ;
struct TYPE_3__ {scalar_t__ auto_update_work_enabled; struct omap_dss_device* dssdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ OMAP_DSS_DISPLAY_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct omapfb2_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct omapfb2_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct omapfb2_device*,struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct omap_overlay*) ; 
 int /*<<< orphan*/  FUNC10 (struct omap_overlay*) ; 
 int /*<<< orphan*/  FUNC11 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct omapfb2_device *fbdev)
{
	int i;

	FUNC0("free_resources\n");

	if (fbdev == NULL)
		return;

	for (i = 0; i < fbdev->num_overlays; i++) {
		struct omap_overlay *ovl = fbdev->overlays[i];

		ovl->disable(ovl);

		if (ovl->manager)
			ovl->unset_manager(ovl);
	}

	for (i = 0; i < fbdev->num_fbs; i++)
		FUNC13(fbdev->fbs[i]);

	/* free the reserved fbmem */
	FUNC7(fbdev);

	for (i = 0; i < fbdev->num_fbs; i++) {
		FUNC3(fbdev, fbdev->fbs[i]);
		FUNC5(fbdev->fbs[i]);
	}

	for (i = 0; i < fbdev->num_displays; i++) {
		struct omap_dss_device *dssdev = fbdev->displays[i].dssdev;

		if (fbdev->displays[i].auto_update_work_enabled)
			FUNC8(fbdev, dssdev);

		if (dssdev->state != OMAP_DSS_DISPLAY_DISABLED)
			dssdev->driver->disable(dssdev);

		dssdev->driver->disconnect(dssdev);

		FUNC6(dssdev);
	}

	if (fbdev->auto_update_wq != NULL) {
		FUNC4(fbdev->auto_update_wq);
		FUNC1(fbdev->auto_update_wq);
		fbdev->auto_update_wq = NULL;
	}

	FUNC2(fbdev->dev, NULL);
}