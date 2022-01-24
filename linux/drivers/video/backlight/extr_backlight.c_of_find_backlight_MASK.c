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
struct device_node {int dummy; } ;
struct device {scalar_t__ of_node; } ;
struct TYPE_2__ {scalar_t__ max_brightness; scalar_t__ brightness; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct backlight_device* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct backlight_device* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (scalar_t__,char*,int /*<<< orphan*/ ) ; 

struct backlight_device *FUNC5(struct device *dev)
{
	struct backlight_device *bd = NULL;
	struct device_node *np;

	if (!dev)
		return NULL;

	if (FUNC1(CONFIG_OF) && dev->of_node) {
		np = FUNC4(dev->of_node, "backlight", 0);
		if (np) {
			bd = FUNC2(np);
			FUNC3(np);
			if (!bd)
				return FUNC0(-EPROBE_DEFER);
			/*
			 * Note: gpio_backlight uses brightness as
			 * power state during probe
			 */
			if (!bd->props.brightness)
				bd->props.brightness = bd->props.max_brightness;
		}
	}

	return bd;
}