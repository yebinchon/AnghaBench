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
struct omapfb_plane_info {scalar_t__ enabled; int /*<<< orphan*/  out_height; int /*<<< orphan*/  out_width; int /*<<< orphan*/  pos_y; int /*<<< orphan*/  pos_x; int /*<<< orphan*/  mem_idx; } ;
struct omapfb_info {scalar_t__ num_overlays; struct omapfb2_mem_region* region; struct omap_overlay** overlays; struct omapfb2_device* fbdev; } ;
struct omapfb2_mem_region {scalar_t__ id; int /*<<< orphan*/  size; } ;
struct omapfb2_device {int /*<<< orphan*/  dev; } ;
struct omap_overlay_info {int /*<<< orphan*/  out_height; int /*<<< orphan*/  out_width; int /*<<< orphan*/  pos_y; int /*<<< orphan*/  pos_x; } ;
struct omap_overlay {int (* disable ) (struct omap_overlay*) ;int (* set_overlay_info ) (struct omap_overlay*,struct omap_overlay_info*) ;int (* enable ) (struct omap_overlay*) ;TYPE_1__* manager; int /*<<< orphan*/  (* get_overlay_info ) (struct omap_overlay*,struct omap_overlay_info*) ;} ;
struct fb_info {int dummy; } ;
struct TYPE_2__ {int (* apply ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 struct omapfb_info* FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct omapfb2_mem_region* FUNC3 (struct omapfb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct omapfb2_mem_region*) ; 
 int /*<<< orphan*/  FUNC5 (struct omapfb2_mem_region*) ; 
 int FUNC6 (struct fb_info*,struct omap_overlay*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct omap_overlay*,struct omap_overlay_info*) ; 
 int FUNC9 (struct omap_overlay*) ; 
 int /*<<< orphan*/  FUNC10 (struct omap_overlay*,struct omap_overlay_info*) ; 
 int FUNC11 (struct omap_overlay*,struct omap_overlay_info*) ; 
 int FUNC12 (TYPE_1__*) ; 
 int FUNC13 (struct omap_overlay*) ; 
 int FUNC14 (struct omap_overlay*,struct omap_overlay_info*) ; 

__attribute__((used)) static int FUNC15(struct fb_info *fbi, struct omapfb_plane_info *pi)
{
	struct omapfb_info *ofbi = FUNC1(fbi);
	struct omapfb2_device *fbdev = ofbi->fbdev;
	struct omap_overlay *ovl;
	struct omap_overlay_info old_info;
	struct omapfb2_mem_region *old_rg, *new_rg;
	int r = 0;

	FUNC0("omapfb_setup_plane\n");

	if (ofbi->num_overlays == 0) {
		r = -EINVAL;
		goto out;
	}

	/* XXX uses only the first overlay */
	ovl = ofbi->overlays[0];

	old_rg = ofbi->region;
	new_rg = FUNC3(ofbi, pi->mem_idx);
	if (!new_rg) {
		r = -EINVAL;
		goto out;
	}

	/* Take the locks in a specific order to keep lockdep happy */
	if (old_rg->id < new_rg->id) {
		FUNC4(old_rg);
		FUNC4(new_rg);
	} else if (new_rg->id < old_rg->id) {
		FUNC4(new_rg);
		FUNC4(old_rg);
	} else
		FUNC4(old_rg);

	if (pi->enabled && !new_rg->size) {
		/*
		 * This plane's memory was freed, can't enable it
		 * until it's reallocated.
		 */
		r = -EINVAL;
		goto put_mem;
	}

	ovl->get_overlay_info(ovl, &old_info);

	if (old_rg != new_rg) {
		ofbi->region = new_rg;
		FUNC7(fbi);
	}

	if (!pi->enabled) {
		r = ovl->disable(ovl);
		if (r)
			goto undo;
	}

	if (pi->enabled) {
		r = FUNC6(fbi, ovl, pi->pos_x, pi->pos_y,
			pi->out_width, pi->out_height);
		if (r)
			goto undo;
	} else {
		struct omap_overlay_info info;

		ovl->get_overlay_info(ovl, &info);

		info.pos_x = pi->pos_x;
		info.pos_y = pi->pos_y;
		info.out_width = pi->out_width;
		info.out_height = pi->out_height;

		r = ovl->set_overlay_info(ovl, &info);
		if (r)
			goto undo;
	}

	if (ovl->manager) {
		r = ovl->manager->apply(ovl->manager);
		if (r)
			goto undo;
	}

	if (pi->enabled) {
		r = ovl->enable(ovl);
		if (r)
			goto undo;
	}

	/* Release the locks in a specific order to keep lockdep happy */
	if (old_rg->id > new_rg->id) {
		FUNC5(old_rg);
		FUNC5(new_rg);
	} else if (new_rg->id > old_rg->id) {
		FUNC5(new_rg);
		FUNC5(old_rg);
	} else
		FUNC5(old_rg);

	return 0;

 undo:
	if (old_rg != new_rg) {
		ofbi->region = old_rg;
		FUNC7(fbi);
	}

	ovl->set_overlay_info(ovl, &old_info);
 put_mem:
	/* Release the locks in a specific order to keep lockdep happy */
	if (old_rg->id > new_rg->id) {
		FUNC5(old_rg);
		FUNC5(new_rg);
	} else if (new_rg->id > old_rg->id) {
		FUNC5(new_rg);
		FUNC5(old_rg);
	} else
		FUNC5(old_rg);
 out:
	FUNC2(fbdev->dev, "setup_plane failed\n");

	return r;
}