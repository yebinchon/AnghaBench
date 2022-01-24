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
struct omapfb_display_data {scalar_t__ bpp_override; } ;
struct omapfb2_device {int dummy; } ;
struct omap_dss_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* get_recommended_bpp ) (struct omap_dss_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct omapfb_display_data* FUNC1 (struct omapfb2_device*,struct omap_dss_device*) ; 
 int FUNC2 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC3(struct omapfb2_device *fbdev,
		struct omap_dss_device *dssdev)
{
	struct omapfb_display_data *d;

	FUNC0(dssdev->driver->get_recommended_bpp == NULL);

	d = FUNC1(fbdev, dssdev);

	if (d->bpp_override != 0)
		return d->bpp_override;

	return dssdev->driver->get_recommended_bpp(dssdev);
}