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
struct phy {int dummy; } ;
struct of_phandle_args {scalar_t__* args; } ;
struct mvebu_a3700_comphy_lane {scalar_t__ port; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct phy*) ; 
 scalar_t__ MVEBU_A3700_COMPHY_PORTS ; 
 scalar_t__ FUNC2 (int) ; 
 struct phy* FUNC3 (struct device*,struct of_phandle_args*) ; 
 struct mvebu_a3700_comphy_lane* FUNC4 (struct phy*) ; 

__attribute__((used)) static struct phy *FUNC5(struct device *dev,
					    struct of_phandle_args *args)
{
	struct mvebu_a3700_comphy_lane *lane;
	struct phy *phy;

	if (FUNC2(args->args[0] >= MVEBU_A3700_COMPHY_PORTS))
		return FUNC0(-EINVAL);

	phy = FUNC3(dev, args);
	if (FUNC1(phy))
		return phy;

	lane = FUNC4(phy);
	lane->port = args->args[0];

	return phy;
}