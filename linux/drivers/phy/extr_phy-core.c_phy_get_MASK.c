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
struct device {scalar_t__ of_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct phy*) ; 
 struct phy* FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (scalar_t__,char*,char const*) ; 
 struct phy* FUNC6 (struct device*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

struct phy *FUNC8(struct device *dev, const char *string)
{
	int index = 0;
	struct phy *phy;

	if (string == NULL) {
		FUNC3(dev, "missing string\n");
		return FUNC0(-EINVAL);
	}

	if (dev->of_node) {
		index = FUNC5(dev->of_node, "phy-names",
			string);
		phy = FUNC2(dev->of_node, index);
	} else {
		phy = FUNC6(dev, string);
	}
	if (FUNC1(phy))
		return phy;

	if (!FUNC7(phy->ops->owner))
		return FUNC0(-EPROBE_DEFER);

	FUNC4(&phy->dev);

	return phy;
}