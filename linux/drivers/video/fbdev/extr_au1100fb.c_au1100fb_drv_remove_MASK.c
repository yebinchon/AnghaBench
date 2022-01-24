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
struct platform_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  cmap; } ;
struct au1100fb_device {scalar_t__ lcdclk; TYPE_2__ info; TYPE_1__* regs; } ;
struct TYPE_4__ {int /*<<< orphan*/  lcd_control; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  LCD_CONTROL_GO ; 
 int /*<<< orphan*/  VESA_POWERDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct au1100fb_device* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

int FUNC6(struct platform_device *dev)
{
	struct au1100fb_device *fbdev = NULL;

	if (!dev)
		return -ENODEV;

	fbdev = FUNC4(dev);

#if !defined(CONFIG_FRAMEBUFFER_CONSOLE) && defined(CONFIG_LOGO)
	au1100fb_fb_blank(VESA_POWERDOWN, &fbdev->info);
#endif
	fbdev->regs->lcd_control &= ~LCD_CONTROL_GO;

	/* Clean up all probe data */
	FUNC5(&fbdev->info);

	FUNC3(&fbdev->info.cmap);

	if (fbdev->lcdclk) {
		FUNC1(fbdev->lcdclk);
		FUNC2(fbdev->lcdclk);
	}

	return 0;
}