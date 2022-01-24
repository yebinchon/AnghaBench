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
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct phy*) ; 
 struct phy* FUNC2 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct device_node*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

struct phy *FUNC6(struct device_node *np, const char *con_id)
{
	struct phy *phy = NULL;
	int index = 0;

	if (con_id)
		index = FUNC4(np, "phy-names", con_id);

	phy = FUNC2(np, index);
	if (FUNC1(phy))
		return phy;

	if (!FUNC5(phy->ops->owner))
		return FUNC0(-EPROBE_DEFER);

	FUNC3(&phy->dev);

	return phy;
}