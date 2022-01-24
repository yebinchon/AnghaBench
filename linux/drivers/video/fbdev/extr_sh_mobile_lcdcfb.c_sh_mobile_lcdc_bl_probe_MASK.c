#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sh_mobile_lcdc_chan {TYPE_3__* cfg; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
struct TYPE_5__ {int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_2__ bl_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct backlight_device*) ; 
 struct backlight_device* FUNC2 (int /*<<< orphan*/ ,struct device*,struct sh_mobile_lcdc_chan*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sh_mobile_lcdc_bl_ops ; 

__attribute__((used)) static struct backlight_device *FUNC5(struct device *parent,
					       struct sh_mobile_lcdc_chan *ch)
{
	struct backlight_device *bl;

	bl = FUNC2(ch->cfg->bl_info.name, parent, ch,
				       &sh_mobile_lcdc_bl_ops, NULL);
	if (FUNC0(bl)) {
		FUNC4(parent, "unable to register backlight device: %ld\n",
			FUNC1(bl));
		return NULL;
	}

	bl->props.max_brightness = ch->cfg->bl_info.max_brightness;
	bl->props.brightness = bl->props.max_brightness;
	FUNC3(bl);

	return bl;
}