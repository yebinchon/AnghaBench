#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  activate; } ;
struct fb_info {int /*<<< orphan*/  cmap; int /*<<< orphan*/  device; TYPE_1__ var; int /*<<< orphan*/  screen_base; struct cirrusfb_info* par; } ;
struct cirrusfb_info {scalar_t__ btype; } ;

/* Variables and functions */
 scalar_t__ BT_NONE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FB_ACTIVATE_NOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,struct fb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mode_option ; 
 int FUNC7 (struct fb_info*) ; 

__attribute__((used)) static int FUNC8(struct fb_info *info)
{
	struct cirrusfb_info *cinfo = info->par;
	int err;

	/* sanity checks */
	FUNC0(cinfo->btype != BT_NONE);

	/* set all the vital stuff */
	FUNC2(info);

	FUNC3(info->device, "(RAM start set to: 0x%p)\n", info->screen_base);

	err = FUNC6(&info->var, info, mode_option, NULL, 0, NULL, 8);
	if (!err) {
		FUNC3(info->device, "wrong initial video mode\n");
		err = -EINVAL;
		goto err_dealloc_cmap;
	}

	info->var.activate = FB_ACTIVATE_NOW;

	err = FUNC1(&info->var, info);
	if (err < 0) {
		/* should never happen */
		FUNC3(info->device,
			"choking on default var... umm, no good.\n");
		goto err_dealloc_cmap;
	}

	err = FUNC7(info);
	if (err < 0) {
		FUNC4(info->device,
			"could not register fb device; err = %d!\n", err);
		goto err_dealloc_cmap;
	}

	return 0;

err_dealloc_cmap:
	FUNC5(&info->cmap);
	return err;
}