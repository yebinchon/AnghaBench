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
struct device {TYPE_1__* driver; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_match_table; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 struct of_device_id* FUNC0 (int /*<<< orphan*/ ,struct device*) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ) ; 

int FUNC2(struct platform_device *pdev)
{
	struct device *dev = pdev ? &pdev->dev : NULL;
	const struct of_device_id *match;

	if (!dev || !dev->driver)
		return -ENODEV;

	match = FUNC0(dev->driver->of_match_table, dev);
	if (!match || !match->data)
		return -EINVAL;

	return FUNC1(dev, match->data);
}