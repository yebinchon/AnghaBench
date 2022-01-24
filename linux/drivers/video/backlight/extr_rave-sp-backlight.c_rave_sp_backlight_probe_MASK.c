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
struct device {TYPE_1__* of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct backlight_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  phandle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct backlight_device* FUNC4 (struct device*,int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rave_sp_backlight_ops ; 
 int /*<<< orphan*/  rave_sp_backlight_props ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct backlight_device *bd;

	bd = FUNC4(dev, pdev->name, dev,
					    FUNC3(dev->parent),
					    &rave_sp_backlight_ops,
					    &rave_sp_backlight_props);
	if (FUNC0(bd))
		return FUNC1(bd);

	/*
	 * If there is a phandle pointing to the device node we can
	 * assume that another device will manage the status changes.
	 * If not we make sure the backlight is in a consistent state.
	 */
	if (!dev->of_node->phandle)
		FUNC2(bd);

	return 0;
}