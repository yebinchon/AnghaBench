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
struct spear1340_miphy_priv {scalar_t__ mode; struct phy* phy; } ;
struct phy {int dummy; } ;
struct of_phandle_args {int args_count; scalar_t__* args; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCIE ; 
 scalar_t__ SATA ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct spear1340_miphy_priv* FUNC2 (struct device*) ; 

__attribute__((used)) static struct phy *FUNC3(struct device *dev,
					 struct of_phandle_args *args)
{
	struct spear1340_miphy_priv *priv = FUNC2(dev);

	if (args->args_count < 1) {
		FUNC1(dev, "DT did not pass correct no of args\n");
		return FUNC0(-ENODEV);
	}

	priv->mode = args->args[0];

	if (priv->mode != SATA && priv->mode != PCIE) {
		FUNC1(dev, "DT did not pass correct phy mode\n");
		return FUNC0(-ENODEV);
	}

	return priv->phy;
}