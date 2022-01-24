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
typedef  int /*<<< orphan*/  u8 ;
struct lm3533_bl {int /*<<< orphan*/  cb; } ;
struct TYPE_2__ {int brightness; scalar_t__ power; scalar_t__ fb_blank; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 scalar_t__ FB_BLANK_UNBLANK ; 
 struct lm3533_bl* FUNC0 (struct backlight_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct backlight_device *bd)
{
	struct lm3533_bl *bl = FUNC0(bd);
	int brightness = bd->props.brightness;

	if (bd->props.power != FB_BLANK_UNBLANK)
		brightness = 0;
	if (bd->props.fb_blank != FB_BLANK_UNBLANK)
		brightness = 0;

	return FUNC1(&bl->cb, (u8)brightness);
}