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
struct phy_provider {int dummy; } ;
struct module {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct phy_provider* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct phy_provider*) ; 
 struct phy_provider* FUNC2 (struct device*,struct device_node*,struct module*,struct phy* (*) (struct device*,struct of_phandle_args*)) ; 
 int /*<<< orphan*/  devm_phy_provider_release ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct phy_provider**) ; 
 struct phy_provider** FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_provider**) ; 

struct phy_provider *FUNC6(struct device *dev,
	struct device_node *children, struct module *owner,
	struct phy * (*of_xlate)(struct device *dev,
				 struct of_phandle_args *args))
{
	struct phy_provider **ptr, *phy_provider;

	ptr = FUNC4(devm_phy_provider_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	phy_provider = FUNC2(dev, children, owner,
						  of_xlate);
	if (!FUNC1(phy_provider)) {
		*ptr = phy_provider;
		FUNC3(dev, ptr);
	} else {
		FUNC5(ptr);
	}

	return phy_provider;
}