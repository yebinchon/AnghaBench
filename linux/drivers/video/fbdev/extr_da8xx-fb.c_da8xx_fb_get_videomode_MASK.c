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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fb_videomode {int /*<<< orphan*/  name; } ;
struct da8xx_lcdc_platform_data {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int FUNC0 (struct fb_videomode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct da8xx_lcdc_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct fb_videomode* known_lcd_panels ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fb_videomode *FUNC5(struct platform_device *dev)
{
	struct da8xx_lcdc_platform_data *fb_pdata = FUNC2(&dev->dev);
	struct fb_videomode *lcdc_info;
	int i;

	for (i = 0, lcdc_info = known_lcd_panels;
		i < FUNC0(known_lcd_panels); i++, lcdc_info++) {
		if (FUNC4(fb_pdata->type, lcdc_info->name) == 0)
			break;
	}

	if (i == FUNC0(known_lcd_panels)) {
		FUNC1(&dev->dev, "no panel found\n");
		return NULL;
	}
	FUNC3(&dev->dev, "found %s panel\n", lcdc_info->name);

	return lcdc_info;
}