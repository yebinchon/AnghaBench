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
struct omap_backlight {scalar_t__ current_intensity; scalar_t__ powermode; } ;
struct TYPE_2__ {scalar_t__ brightness; scalar_t__ fb_blank; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 scalar_t__ FB_BLANK_UNBLANK ; 
 struct omap_backlight* FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct backlight_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct backlight_device *dev)
{
	struct omap_backlight *bl = FUNC0(dev);

	if (bl->current_intensity != dev->props.brightness) {
		if (bl->powermode == FB_BLANK_UNBLANK)
			FUNC1(dev->props.brightness);
		bl->current_intensity = dev->props.brightness;
	}

	if (dev->props.fb_blank != bl->powermode)
		FUNC2(dev, dev->props.fb_blank);

	return 0;
}