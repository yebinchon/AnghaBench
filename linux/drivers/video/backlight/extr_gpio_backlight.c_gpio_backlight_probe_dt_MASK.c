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
struct platform_device {struct device dev; } ;
struct gpio_backlight {int /*<<< orphan*/  gpiod; int /*<<< orphan*/  def_value; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOD_ASIS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev,
				   struct gpio_backlight *gbl)
{
	struct device *dev = &pdev->dev;
	int ret;

	gbl->def_value = FUNC3(dev, "default-on");

	gbl->gpiod = FUNC4(dev, NULL, GPIOD_ASIS);
	if (FUNC0(gbl->gpiod)) {
		ret = FUNC1(gbl->gpiod);

		if (ret != -EPROBE_DEFER) {
			FUNC2(dev,
				"Error: The gpios parameter is missing or invalid.\n");
		}
		return ret;
	}

	return 0;
}