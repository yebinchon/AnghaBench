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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  devm_phy_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct phy**) ; 
 struct phy** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct phy**) ; 
 struct phy* FUNC5 (struct device*,char const*) ; 

struct phy *FUNC6(struct device *dev, const char *string)
{
	struct phy **ptr, *phy;

	ptr = FUNC3(devm_phy_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	phy = FUNC5(dev, string);
	if (!FUNC1(phy)) {
		*ptr = phy;
		FUNC2(dev, ptr);
	} else {
		FUNC4(ptr);
	}

	return phy;
}