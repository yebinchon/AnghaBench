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
struct serdes_am654 {int busy; int /*<<< orphan*/  type; int /*<<< orphan*/  control; } ;
struct phy {int dummy; } ;
struct of_phandle_args {int /*<<< orphan*/ * args; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 struct phy* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct phy* FUNC4 (struct device*,struct of_phandle_args*) ; 
 struct serdes_am654* FUNC5 (struct phy*) ; 

__attribute__((used)) static struct phy *FUNC6(struct device *dev,
				      struct of_phandle_args *args)
{
	struct serdes_am654 *am654_phy;
	struct phy *phy;
	int ret;

	phy = FUNC4(dev, args);
	if (FUNC1(phy))
		return phy;

	am654_phy = FUNC5(phy);
	if (am654_phy->busy)
		return FUNC0(-EBUSY);

	ret = FUNC3(am654_phy->control, args->args[1]);
	if (ret) {
		FUNC2(dev, "Failed to select SERDES Lane Function\n");
		return FUNC0(ret);
	}

	am654_phy->busy = true;
	am654_phy->type = args->args[0];

	return phy;
}