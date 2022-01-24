#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct uvesafb_par {int /*<<< orphan*/  vbe_state_saved; int /*<<< orphan*/  vbe_state_orig; int /*<<< orphan*/  vbe_modes; int /*<<< orphan*/  mtrr_handle; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  modedb; } ;
struct TYPE_5__ {int /*<<< orphan*/  smem_len; int /*<<< orphan*/  smem_start; } ;
struct fb_info {int /*<<< orphan*/  cmap; TYPE_3__ monspecs; TYPE_2__ fix; int /*<<< orphan*/  screen_base; struct uvesafb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct fb_info*) ; 
 int /*<<< orphan*/  uvesafb_dev_attgrp ; 

__attribute__((used)) static int FUNC11(struct platform_device *dev)
{
	struct fb_info *info = FUNC6(dev);

	if (info) {
		struct uvesafb_par *par = info->par;

		FUNC9(&dev->dev.kobj, &uvesafb_dev_attgrp);
		FUNC10(info);
		FUNC8(0x3c0, 32);
		FUNC4(info->screen_base);
		FUNC0(par->mtrr_handle);
		FUNC7(info->fix.smem_start, info->fix.smem_len);
		FUNC2(info->monspecs.modedb);
		FUNC1(&info->cmap);

		FUNC5(par->vbe_modes);
		FUNC5(par->vbe_state_orig);
		FUNC5(par->vbe_state_saved);

		FUNC3(info);
	}
	return 0;
}