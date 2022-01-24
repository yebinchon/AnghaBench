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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {size_t scale; } ;
struct backlight_device {TYPE_1__ props; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 size_t BACKLIGHT_SCALE_NON_LINEAR ; 
 scalar_t__ FUNC0 (int) ; 
 char** backlight_scale_types ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 struct backlight_device* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct backlight_device *bd = FUNC2(dev);

	if (FUNC0(bd->props.scale > BACKLIGHT_SCALE_NON_LINEAR))
		return FUNC1(buf, "unknown\n");

	return FUNC1(buf, "%s\n", backlight_scale_types[bd->props.scale]);
}