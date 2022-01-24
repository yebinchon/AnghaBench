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
struct omapfb_info {int num_overlays; struct omap_overlay** overlays; struct omapfb2_device* fbdev; } ;
struct omapfb2_device {int num_overlays; struct omap_overlay** overlays; } ;
struct omap_overlay {int dummy; } ;
struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct omapfb_info* FUNC0 (struct fb_info*) ; 
 int PAGE_SIZE ; 
 struct fb_info* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct omapfb2_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct omapfb2_device*) ; 
 int FUNC5 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct fb_info *fbi = FUNC1(dev);
	struct omapfb_info *ofbi = FUNC0(fbi);
	struct omapfb2_device *fbdev = ofbi->fbdev;
	ssize_t l = 0;
	int t;

	FUNC2(fbi);
	FUNC3(fbdev);

	for (t = 0; t < ofbi->num_overlays; t++) {
		struct omap_overlay *ovl = ofbi->overlays[t];
		int ovlnum;

		for (ovlnum = 0; ovlnum < fbdev->num_overlays; ++ovlnum)
			if (ovl == fbdev->overlays[ovlnum])
				break;

		l += FUNC5(buf + l, PAGE_SIZE - l, "%s%d",
				t == 0 ? "" : ",", ovlnum);
	}

	l += FUNC5(buf + l, PAGE_SIZE - l, "\n");

	FUNC4(fbdev);
	FUNC6(fbi);

	return l;
}