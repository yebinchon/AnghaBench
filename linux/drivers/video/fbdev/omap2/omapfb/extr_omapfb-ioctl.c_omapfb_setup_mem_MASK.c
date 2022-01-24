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
struct omapfb_mem_info {scalar_t__ type; int /*<<< orphan*/  size; } ;
struct omapfb_info {int num_overlays; struct omap_overlay** overlays; struct omapfb2_mem_region* region; struct omapfb2_device* fbdev; } ;
struct omapfb2_mem_region {size_t size; scalar_t__ type; int /*<<< orphan*/  lock; int /*<<< orphan*/  lock_count; int /*<<< orphan*/  map_count; int /*<<< orphan*/  id; } ;
struct omapfb2_device {int num_fbs; int /*<<< orphan*/  dev; struct fb_info** fbs; } ;
struct omap_overlay {scalar_t__ (* is_enabled ) (struct omap_overlay*) ;} ;
struct omap_dss_device {TYPE_1__* driver; } ;
struct fb_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sync ) (struct omap_dss_device*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 struct omapfb_info* FUNC0 (struct fb_info*) ; 
 scalar_t__ OMAPFB_MEMTYPE_SDRAM ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct omap_dss_device* FUNC7 (struct fb_info*) ; 
 int FUNC8 (struct fb_info*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct omap_dss_device*) ; 
 scalar_t__ FUNC10 (struct omap_overlay*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct fb_info *fbi, struct omapfb_mem_info *mi)
{
	struct omapfb_info *ofbi = FUNC0(fbi);
	struct omapfb2_device *fbdev = ofbi->fbdev;
	struct omap_dss_device *display = FUNC7(fbi);
	struct omapfb2_mem_region *rg;
	int r = 0, i;
	size_t size;

	if (mi->type != OMAPFB_MEMTYPE_SDRAM)
		return -EINVAL;

	size = FUNC1(mi->size);

	if (display && display->driver->sync)
		display->driver->sync(display);

	rg = ofbi->region;

	FUNC6(&rg->lock, rg->id);
	FUNC3(&rg->lock_count);

	if (rg->size == size && rg->type == mi->type)
		goto out;

	if (FUNC4(&rg->map_count)) {
		r = -EBUSY;
		goto out;
	}

	for (i = 0; i < fbdev->num_fbs; i++) {
		struct omapfb_info *ofbi2 = FUNC0(fbdev->fbs[i]);
		int j;

		if (ofbi2->region != rg)
			continue;

		for (j = 0; j < ofbi2->num_overlays; j++) {
			struct omap_overlay *ovl;
			ovl = ofbi2->overlays[j];
			if (ovl->is_enabled(ovl)) {
				r = -EBUSY;
				goto out;
			}
		}
	}

	r = FUNC8(fbi, size, mi->type);
	if (r) {
		FUNC5(fbdev->dev, "realloc fbmem failed\n");
		goto out;
	}

 out:
	FUNC2(&rg->lock_count);
	FUNC11(&rg->lock);

	return r;
}