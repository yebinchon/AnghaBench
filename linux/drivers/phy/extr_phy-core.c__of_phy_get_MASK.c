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
struct phy_provider {int /*<<< orphan*/  owner; int /*<<< orphan*/  dev; struct phy* (* of_xlate ) (int /*<<< orphan*/ ,struct of_phandle_args*) ;} ;
struct phy {int dummy; } ;
struct of_phandle_args {int /*<<< orphan*/  np; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device_node*,char*,char*,int,struct of_phandle_args*) ; 
 struct phy_provider* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phy_provider_mutex ; 
 struct phy* FUNC11 (int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct phy *FUNC13(struct device_node *np, int index)
{
	int ret;
	struct phy_provider *phy_provider;
	struct phy *phy = NULL;
	struct of_phandle_args args;

	ret = FUNC9(np, "phys", "#phy-cells",
		index, &args);
	if (ret)
		return FUNC0(-ENODEV);

	/* This phy type handled by the usb-phy subsystem for now */
	if (FUNC7(args.np, "usb-nop-xceiv"))
		return FUNC0(-ENODEV);

	FUNC4(&phy_provider_mutex);
	phy_provider = FUNC10(args.np);
	if (FUNC1(phy_provider) || !FUNC12(phy_provider->owner)) {
		phy = FUNC0(-EPROBE_DEFER);
		goto out_unlock;
	}

	if (!FUNC6(args.np)) {
		FUNC2(phy_provider->dev, "Requested PHY is disabled\n");
		phy = FUNC0(-ENODEV);
		goto out_put_module;
	}

	phy = phy_provider->of_xlate(phy_provider->dev, &args);

out_put_module:
	FUNC3(phy_provider->owner);

out_unlock:
	FUNC5(&phy_provider_mutex);
	FUNC8(args.np);

	return phy;
}