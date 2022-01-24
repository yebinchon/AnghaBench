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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  smem_len; int /*<<< orphan*/  smem_start; } ;
struct fb_info {int /*<<< orphan*/  flags; int /*<<< orphan*/ * par; int /*<<< orphan*/ * pseudo_palette; int /*<<< orphan*/  screen_size; TYPE_1__ fix; int /*<<< orphan*/ * fbops; int /*<<< orphan*/  screen_base; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FBINFO_DEFAULT ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  cobalt_lcd_fbops ; 
 TYPE_1__ cobalt_lcdfb_fix ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*,char*) ; 
 struct fb_info* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct fb_info*) ; 
 int FUNC7 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *dev)
{
	struct fb_info *info;
	struct resource *res;
	int retval;

	info = FUNC2(0, &dev->dev);
	if (!info)
		return -ENOMEM;

	res = FUNC5(dev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC3(info);
		return -EBUSY;
	}

	info->screen_size = FUNC8(res);
	info->screen_base = FUNC0(&dev->dev, res->start,
					 info->screen_size);
	if (!info->screen_base) {
		FUNC3(info);
		return -ENOMEM;
	}

	info->fbops = &cobalt_lcd_fbops;
	info->fix = cobalt_lcdfb_fix;
	info->fix.smem_start = res->start;
	info->fix.smem_len = info->screen_size;
	info->pseudo_palette = NULL;
	info->par = NULL;
	info->flags = FBINFO_DEFAULT;

	retval = FUNC7(info);
	if (retval < 0) {
		FUNC3(info);
		return retval;
	}

	FUNC6(dev, info);

	FUNC4(info);

	FUNC1(info, "Cobalt server LCD frame buffer device\n");

	return 0;
}