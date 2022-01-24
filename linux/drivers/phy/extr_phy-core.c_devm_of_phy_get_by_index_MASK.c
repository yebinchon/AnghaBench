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
struct phy {int /*<<< orphan*/  dev; TYPE_1__* ops; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct phy*) ; 
 struct phy* FUNC2 (struct device_node*,int) ; 
 int /*<<< orphan*/  devm_phy_release ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct phy**) ; 
 struct phy** FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct phy**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

struct phy *FUNC8(struct device *dev, struct device_node *np,
				     int index)
{
	struct phy **ptr, *phy;

	ptr = FUNC4(devm_phy_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	phy = FUNC2(np, index);
	if (FUNC1(phy)) {
		FUNC5(ptr);
		return phy;
	}

	if (!FUNC7(phy->ops->owner)) {
		FUNC5(ptr);
		return FUNC0(-EPROBE_DEFER);
	}

	FUNC6(&phy->dev);

	*ptr = phy;
	FUNC3(dev, ptr);

	return phy;
}