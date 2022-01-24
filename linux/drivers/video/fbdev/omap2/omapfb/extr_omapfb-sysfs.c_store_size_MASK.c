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
struct omapfb_info {int num_overlays; struct omapfb2_mem_region* region; struct omap_overlay** overlays; struct omapfb2_device* fbdev; } ;
struct omapfb2_mem_region {unsigned long size; int /*<<< orphan*/  lock; int /*<<< orphan*/  lock_count; int /*<<< orphan*/  type; int /*<<< orphan*/  map_count; int /*<<< orphan*/  id; } ;
struct omapfb2_device {int num_fbs; struct fb_info** fbs; } ;
struct omap_overlay {scalar_t__ (* is_enabled ) (struct omap_overlay*) ;} ;
struct omap_dss_device {TYPE_1__* driver; } ;
struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* sync ) (struct omap_dss_device*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 struct omapfb_info* FUNC0 (struct fb_info*) ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct fb_info* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct omap_dss_device* FUNC8 (struct fb_info*) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC10 (struct fb_info*) ; 
 int FUNC11 (struct fb_info*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct omap_dss_device*) ; 
 scalar_t__ FUNC13 (struct omap_overlay*) ; 
 int /*<<< orphan*/  FUNC14 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC16(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct fb_info *fbi = FUNC6(dev);
	struct omapfb_info *ofbi = FUNC0(fbi);
	struct omapfb2_device *fbdev = ofbi->fbdev;
	struct omap_dss_device *display = FUNC8(fbi);
	struct omapfb2_mem_region *rg;
	unsigned long size;
	int r;
	int i;

	r = FUNC9(buf, 0, &size);
	if (r)
		return r;

	size = FUNC1(size);

	FUNC10(fbi);

	if (display && display->driver->sync)
		display->driver->sync(display);

	rg = ofbi->region;

	FUNC7(&rg->lock, rg->id);
	FUNC3(&rg->lock_count);

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

	if (size != ofbi->region->size) {
		r = FUNC11(fbi, size, ofbi->region->type);
		if (r) {
			FUNC5(dev, "realloc fbmem failed\n");
			goto out;
		}
	}

	r = count;
out:
	FUNC2(&rg->lock_count);
	FUNC15(&rg->lock);

	FUNC14(fbi);

	return r;
}