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
struct rockchip_pcie_phy {TYPE_1__* phys; } ;
struct phy {int dummy; } ;
struct of_phandle_args {scalar_t__ args_count; size_t* args; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct phy* phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t PHY_MAX_LANE_NUM ; 
 scalar_t__ FUNC1 (int) ; 
 struct rockchip_pcie_phy* FUNC2 (struct device*) ; 

__attribute__((used)) static struct phy *FUNC3(struct device *dev,
					      struct of_phandle_args *args)
{
	struct rockchip_pcie_phy *rk_phy = FUNC2(dev);

	if (args->args_count == 0)
		return rk_phy->phys[0].phy;

	if (FUNC1(args->args[0] >= PHY_MAX_LANE_NUM))
		return FUNC0(-ENODEV);

	return rk_phy->phys[args->args[0]].phy;
}