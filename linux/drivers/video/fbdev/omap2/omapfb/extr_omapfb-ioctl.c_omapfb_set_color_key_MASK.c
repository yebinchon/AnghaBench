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
struct omapfb_info {int num_overlays; TYPE_1__** overlays; struct omapfb2_device* fbdev; } ;
struct omapfb_color_key {int dummy; } ;
struct omapfb2_device {int dummy; } ;
struct omap_overlay_manager {int dummy; } ;
struct fb_info {int dummy; } ;
struct TYPE_2__ {struct omap_overlay_manager* manager; } ;

/* Variables and functions */
 int EINVAL ; 
 struct omapfb_info* FUNC0 (struct fb_info*) ; 
 int FUNC1 (struct omap_overlay_manager*,struct omapfb_color_key*) ; 
 int /*<<< orphan*/  FUNC2 (struct omapfb2_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct omapfb2_device*) ; 

__attribute__((used)) static int FUNC4(struct fb_info *fbi,
		struct omapfb_color_key *ck)
{
	struct omapfb_info *ofbi = FUNC0(fbi);
	struct omapfb2_device *fbdev = ofbi->fbdev;
	int r;
	int i;
	struct omap_overlay_manager *mgr = NULL;

	FUNC2(fbdev);

	for (i = 0; i < ofbi->num_overlays; i++) {
		if (ofbi->overlays[i]->manager) {
			mgr = ofbi->overlays[i]->manager;
			break;
		}
	}

	if (!mgr) {
		r = -EINVAL;
		goto err;
	}

	r = FUNC1(mgr, ck);
err:
	FUNC3(fbdev);

	return r;
}