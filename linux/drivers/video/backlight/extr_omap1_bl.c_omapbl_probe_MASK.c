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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct omap_backlight_config {int /*<<< orphan*/  default_intensity; } ;
struct omap_backlight {int /*<<< orphan*/ * dev; struct omap_backlight_config* pdata; scalar_t__ current_intensity; int /*<<< orphan*/  powermode; } ;
struct backlight_properties {int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  brightness; int /*<<< orphan*/  fb_blank; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  OMAPBL_MAX_INTENSITY ; 
 int FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  PWL ; 
 struct omap_backlight_config* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct backlight_device* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,struct omap_backlight*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 struct omap_backlight* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  omapbl_ops ; 
 int /*<<< orphan*/  FUNC8 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct backlight_device*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct backlight_properties props;
	struct backlight_device *dev;
	struct omap_backlight *bl;
	struct omap_backlight_config *pdata = FUNC2(&pdev->dev);

	if (!pdata)
		return -ENXIO;

	bl = FUNC5(&pdev->dev, sizeof(struct omap_backlight),
			  GFP_KERNEL);
	if (FUNC10(!bl))
		return -ENOMEM;

	FUNC6(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_RAW;
	props.max_brightness = OMAPBL_MAX_INTENSITY;
	dev = FUNC4(&pdev->dev, "omap-bl", &pdev->dev,
					bl, &omapbl_ops, &props);
	if (FUNC0(dev))
		return FUNC1(dev);

	bl->powermode = FB_BLANK_POWERDOWN;
	bl->current_intensity = 0;

	bl->pdata = pdata;
	bl->dev = &pdev->dev;

	FUNC9(pdev, dev);

	FUNC7(PWL);	/* Conflicts with UART3 */

	dev->props.fb_blank = FB_BLANK_UNBLANK;
	dev->props.brightness = pdata->default_intensity;
	FUNC8(dev);

	FUNC3(&pdev->dev, "OMAP LCD backlight initialised\n");

	return 0;
}