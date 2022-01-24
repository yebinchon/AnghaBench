#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct samsung_usb2_phy_driver {TYPE_2__* instances; TYPE_1__* cfg; } ;
struct phy {int dummy; } ;
struct of_phandle_args {size_t* args; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct phy* phy; } ;
struct TYPE_3__ {size_t num_phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct samsung_usb2_phy_driver* FUNC2 (struct device*) ; 

__attribute__((used)) static struct phy *FUNC3(struct device *dev,
					struct of_phandle_args *args)
{
	struct samsung_usb2_phy_driver *drv;

	drv = FUNC2(dev);
	if (!drv)
		return FUNC0(-EINVAL);

	if (FUNC1(args->args[0] >= drv->cfg->num_phys))
		return FUNC0(-ENODEV);

	return drv->instances[args->args[0]].phy;
}