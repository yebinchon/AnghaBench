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
struct TYPE_2__ {scalar_t__ of_node; } ;
struct phy {TYPE_1__ dev; } ;
struct of_phandle_args {scalar_t__ np; } ;
struct device {int dummy; } ;
struct class_dev_iter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct class_dev_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct class_dev_iter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct device* FUNC3 (struct class_dev_iter*) ; 
 int /*<<< orphan*/  phy_class ; 
 struct phy* FUNC4 (struct device*) ; 

struct phy *FUNC5(struct device *dev, struct of_phandle_args
	*args)
{
	struct phy *phy;
	struct class_dev_iter iter;

	FUNC2(&iter, phy_class, NULL, NULL);
	while ((dev = FUNC3(&iter))) {
		phy = FUNC4(dev);
		if (args->np != phy->dev.of_node)
			continue;

		FUNC1(&iter);
		return phy;
	}

	FUNC1(&iter);
	return FUNC0(-ENODEV);
}