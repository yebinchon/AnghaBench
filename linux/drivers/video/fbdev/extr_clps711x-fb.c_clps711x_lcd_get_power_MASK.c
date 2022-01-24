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
struct clps711x_fb_info {int /*<<< orphan*/  lcd_pwr; } ;

/* Variables and functions */
 int FB_BLANK_NORMAL ; 
 int FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct clps711x_fb_info* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct lcd_device *lcddev)
{
	struct clps711x_fb_info *cfb = FUNC1(&lcddev->dev);

	if (!FUNC0(cfb->lcd_pwr))
		if (!FUNC2(cfb->lcd_pwr))
			return FB_BLANK_NORMAL;

	return FB_BLANK_UNBLANK;
}