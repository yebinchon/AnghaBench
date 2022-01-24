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
struct lcd_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 scalar_t__ FUNC0 (struct lcd_device*) ; 
 int /*<<< orphan*/  LCD_DEF_CONTRAST ; 
 int FUNC1 (struct lcd_device*) ; 
 int /*<<< orphan*/  S1D_DEVICENAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct lcd_device* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jornada_lcd_props ; 
 int /*<<< orphan*/  FUNC4 (struct lcd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lcd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct lcd_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct lcd_device *lcd_device;
	int ret;

	lcd_device = FUNC3(&pdev->dev, S1D_DEVICENAME,
					&pdev->dev, NULL, &jornada_lcd_props);

	if (FUNC0(lcd_device)) {
		ret = FUNC1(lcd_device);
		FUNC2(&pdev->dev, "failed to register device\n");
		return ret;
	}

	FUNC7(pdev, lcd_device);

	/* lets set our default values */
	FUNC4(lcd_device, LCD_DEF_CONTRAST);
	FUNC5(lcd_device, FB_BLANK_UNBLANK);
	/* give it some time to startup */
	FUNC6(100);

	return 0;
}