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
typedef  scalar_t__ u8 ;
struct dcon_priv {scalar_t__ bl_val; int /*<<< orphan*/  ignore_fb_events; } ;
struct TYPE_2__ {int brightness; scalar_t__ power; int state; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int BL_CORE_FBBLANK ; 
 scalar_t__ FB_BLANK_UNBLANK ; 
 struct dcon_priv* FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dcon_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dcon_priv*,int) ; 

__attribute__((used)) static int FUNC3(struct backlight_device *dev)
{
	struct dcon_priv *dcon = FUNC0(dev);
	u8 level = dev->props.brightness & 0x0F;

	if (dev->props.power != FB_BLANK_UNBLANK)
		level = 0;

	if (level != dcon->bl_val)
		FUNC1(dcon, level);

	/* power down the DCON when the screen is blanked */
	if (!dcon->ignore_fb_events)
		FUNC2(dcon, !!(dev->props.state & BL_CORE_FBBLANK));

	return 0;
}