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
struct lcd_ops {int dummy; } ;
struct lcd_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct lcd_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct lcd_device*) ; 
 int /*<<< orphan*/  devm_lcd_device_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct lcd_device**) ; 
 struct lcd_device** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lcd_device**) ; 
 struct lcd_device* FUNC5 (char const*,struct device*,void*,struct lcd_ops*) ; 

struct lcd_device *FUNC6(struct device *dev,
		const char *name, struct device *parent,
		void *devdata, struct lcd_ops *ops)
{
	struct lcd_device **ptr, *lcd;

	ptr = FUNC3(devm_lcd_device_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	lcd = FUNC5(name, parent, devdata, ops);
	if (!FUNC1(lcd)) {
		*ptr = lcd;
		FUNC2(dev, ptr);
	} else {
		FUNC4(ptr);
	}

	return lcd;
}