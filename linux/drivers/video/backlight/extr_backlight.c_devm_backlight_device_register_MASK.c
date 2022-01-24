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
struct backlight_properties {int dummy; } ;
struct backlight_ops {int dummy; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct backlight_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct backlight_device*) ; 
 struct backlight_device* FUNC2 (char const*,struct device*,void*,struct backlight_ops const*,struct backlight_properties const*) ; 
 int /*<<< orphan*/  devm_backlight_device_release ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct backlight_device**) ; 
 struct backlight_device** FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct backlight_device**) ; 

struct backlight_device *FUNC6(struct device *dev,
	const char *name, struct device *parent, void *devdata,
	const struct backlight_ops *ops,
	const struct backlight_properties *props)
{
	struct backlight_device **ptr, *backlight;

	ptr = FUNC4(devm_backlight_device_release, sizeof(*ptr),
			GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	backlight = FUNC2(name, parent, devdata, ops,
						props);
	if (!FUNC1(backlight)) {
		*ptr = backlight;
		FUNC3(dev, ptr);
	} else {
		FUNC5(ptr);
	}

	return backlight;
}