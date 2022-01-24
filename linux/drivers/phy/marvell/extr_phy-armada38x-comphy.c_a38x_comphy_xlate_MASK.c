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
typedef  int u32 ;
struct phy {int dummy; } ;
struct of_phandle_args {scalar_t__* args; } ;
struct device {int dummy; } ;
struct a38x_comphy_lane {scalar_t__ port; int n; TYPE_1__* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ COMPHY_SELECTOR ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct phy*) ; 
 scalar_t__ MAX_A38X_PORTS ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t) ; 
 int** gbe_mux ; 
 struct phy* FUNC4 (struct device*,struct of_phandle_args*) ; 
 struct a38x_comphy_lane* FUNC5 (struct phy*) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static struct phy *FUNC7(struct device *dev,
				     struct of_phandle_args *args)
{
	struct a38x_comphy_lane *lane;
	struct phy *phy;
	u32 val;

	if (FUNC2(args->args[0] >= MAX_A38X_PORTS))
		return FUNC0(-EINVAL);

	phy = FUNC4(dev, args);
	if (FUNC1(phy))
		return phy;

	lane = FUNC5(phy);
	if (lane->port >= 0)
		return FUNC0(-EBUSY);

	lane->port = args->args[0];

	val = FUNC6(lane->priv->base + COMPHY_SELECTOR);
	val = (val >> (4 * lane->n)) & 0xf;

	if (!gbe_mux[lane->n][lane->port] ||
	    val != gbe_mux[lane->n][lane->port]) {
		FUNC3(lane->priv->dev,
			 "comphy%u: not configured for GBE\n", lane->n);
		phy = FUNC0(-EINVAL);
	}

	return phy;
}