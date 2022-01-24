#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct omapfb_info {int id; int num_overlays; struct omap_overlay** overlays; TYPE_2__* region; int /*<<< orphan*/  mirror; int /*<<< orphan*/  rotation_type; struct omapfb2_device* fbdev; } ;
struct omapfb2_device {int num_fbs; int /*<<< orphan*/  dev; struct fb_info** fbs; struct omap_overlay** overlays; int /*<<< orphan*/  num_overlays; TYPE_2__* regions; } ;
struct omap_overlay {TYPE_1__* manager; } ;
struct fb_info {int dummy; } ;
struct TYPE_5__ {int id; scalar_t__ size; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* apply ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int CONFIG_FB_OMAP2_NUM_FBS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOMEM ; 
 struct omapfb_info* FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  OMAP_DSS_ROT_DMA ; 
 int /*<<< orphan*/  OMAP_DSS_ROT_VRFB ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  def_mirror ; 
 scalar_t__ def_vrfb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct fb_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct omapfb2_device*) ; 
 int FUNC8 (struct fb_info*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct fb_info*) ; 
 int FUNC10 (struct omapfb2_device*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (struct omap_overlay*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int FUNC14 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC16(struct omapfb2_device *fbdev)
{
	int r, i;

	fbdev->num_fbs = 0;

	FUNC0("create %d framebuffers\n",	CONFIG_FB_OMAP2_NUM_FBS);

	/* allocate fb_infos */
	for (i = 0; i < CONFIG_FB_OMAP2_NUM_FBS; i++) {
		struct fb_info *fbi;
		struct omapfb_info *ofbi;

		fbi = FUNC4(sizeof(struct omapfb_info),
				fbdev->dev);
		if (!fbi)
			return -ENOMEM;

		FUNC2(fbi);

		fbdev->fbs[i] = fbi;

		ofbi = FUNC1(fbi);
		ofbi->fbdev = fbdev;
		ofbi->id = i;

		ofbi->region = &fbdev->regions[i];
		ofbi->region->id = i;
		FUNC5(&ofbi->region->lock);

		/* assign these early, so that fb alloc can use them */
		ofbi->rotation_type = def_vrfb ? OMAP_DSS_ROT_VRFB :
			OMAP_DSS_ROT_DMA;
		ofbi->mirror = def_mirror;

		fbdev->num_fbs++;
	}

	FUNC0("fb_infos allocated\n");

	/* assign overlays for the fbs */
	for (i = 0; i < FUNC6(fbdev->num_fbs, fbdev->num_overlays); i++) {
		struct omapfb_info *ofbi = FUNC1(fbdev->fbs[i]);

		ofbi->overlays[0] = fbdev->overlays[i];
		ofbi->num_overlays = 1;
	}

	/* allocate fb memories */
	r = FUNC7(fbdev);
	if (r) {
		FUNC3(fbdev->dev, "failed to allocate fbmem\n");
		return r;
	}

	FUNC0("fbmems allocated\n");

	/* setup fb_infos */
	for (i = 0; i < fbdev->num_fbs; i++) {
		struct fb_info *fbi = fbdev->fbs[i];
		struct omapfb_info *ofbi = FUNC1(fbi);

		FUNC11(ofbi->region);
		r = FUNC10(fbdev, fbi);
		FUNC13(ofbi->region);

		if (r) {
			FUNC3(fbdev->dev, "failed to setup fb_info\n");
			return r;
		}
	}

	for (i = 0; i < fbdev->num_fbs; i++) {
		struct fb_info *fbi = fbdev->fbs[i];
		struct omapfb_info *ofbi = FUNC1(fbi);

		if (ofbi->region->size == 0)
			continue;

		FUNC9(fbi);
	}

	FUNC0("fb_infos initialized\n");

	for (i = 0; i < fbdev->num_fbs; i++) {
		r = FUNC14(fbdev->fbs[i]);
		if (r != 0) {
			FUNC3(fbdev->dev,
				"registering framebuffer %d failed\n", i);
			return r;
		}
	}

	FUNC0("framebuffers registered\n");

	for (i = 0; i < fbdev->num_fbs; i++) {
		struct fb_info *fbi = fbdev->fbs[i];
		struct omapfb_info *ofbi = FUNC1(fbi);

		FUNC11(ofbi->region);
		r = FUNC8(fbi, 1);
		FUNC13(ofbi->region);

		if (r) {
			FUNC3(fbdev->dev, "failed to change mode\n");
			return r;
		}
	}

	/* Enable fb0 */
	if (fbdev->num_fbs > 0) {
		struct omapfb_info *ofbi = FUNC1(fbdev->fbs[0]);

		if (ofbi->num_overlays > 0) {
			struct omap_overlay *ovl = ofbi->overlays[0];

			ovl->manager->apply(ovl->manager);

			r = FUNC12(ovl, 1);

			if (r) {
				FUNC3(fbdev->dev,
						"failed to enable overlay\n");
				return r;
			}
		}
	}

	FUNC0("create_framebuffers done\n");

	return 0;
}