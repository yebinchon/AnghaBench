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
struct sh_mobile_lcdc_priv {int /*<<< orphan*/  dev; } ;
struct sh_mobile_lcdc_overlay {int /*<<< orphan*/  index; struct fb_info* info; TYPE_2__* channel; } ;
struct TYPE_3__ {int /*<<< orphan*/  bits_per_pixel; int /*<<< orphan*/  yres; int /*<<< orphan*/  xres; } ;
struct fb_info {int /*<<< orphan*/  dev; TYPE_1__ var; } ;
struct TYPE_4__ {struct sh_mobile_lcdc_priv* lcdc; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * overlay_sysfs_attrs ; 
 int FUNC4 (struct fb_info*) ; 

__attribute__((used)) static int
FUNC5(struct sh_mobile_lcdc_overlay *ovl)
{
	struct sh_mobile_lcdc_priv *lcdc = ovl->channel->lcdc;
	struct fb_info *info = ovl->info;
	unsigned int i;
	int ret;

	if (info == NULL)
		return 0;

	ret = FUNC4(info);
	if (ret < 0)
		return ret;

	FUNC1(lcdc->dev, "registered %s/overlay %u as %dx%d %dbpp.\n",
		 FUNC2(lcdc->dev), ovl->index, info->var.xres,
		 info->var.yres, info->var.bits_per_pixel);

	for (i = 0; i < FUNC0(overlay_sysfs_attrs); ++i) {
		ret = FUNC3(info->dev, &overlay_sysfs_attrs[i]);
		if (ret < 0)
			return ret;
	}

	return 0;
}