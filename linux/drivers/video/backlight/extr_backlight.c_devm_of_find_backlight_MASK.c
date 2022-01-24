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
struct device {int dummy; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 struct backlight_device* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct backlight_device*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,struct backlight_device*) ; 
 int /*<<< orphan*/  devm_backlight_release ; 
 struct backlight_device* FUNC4 (struct device*) ; 

struct backlight_device *FUNC5(struct device *dev)
{
	struct backlight_device *bd;
	int ret;

	bd = FUNC4(dev);
	if (FUNC1(bd))
		return bd;
	ret = FUNC3(dev, devm_backlight_release, bd);
	if (ret) {
		FUNC2(bd);
		return FUNC0(ret);
	}
	return bd;
}