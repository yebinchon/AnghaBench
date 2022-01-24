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
struct lcd_device {int /*<<< orphan*/  dev; } ;
struct imxfb_info {int /*<<< orphan*/  lcd_pwr; } ;

/* Variables and functions */
 int FB_BLANK_POWERDOWN ; 
 int FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct imxfb_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct lcd_device *lcddev)
{
	struct imxfb_info *fbi = FUNC1(&lcddev->dev);

	if (!FUNC0(fbi->lcd_pwr) &&
	    !FUNC2(fbi->lcd_pwr))
		return FB_BLANK_POWERDOWN;

	return FB_BLANK_UNBLANK;
}