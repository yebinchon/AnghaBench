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
struct phy_berlin_priv {scalar_t__ nphys; TYPE_1__** phys; } ;
struct phy {int dummy; } ;
struct of_phandle_args {scalar_t__* args; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ index; struct phy* phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct phy_berlin_priv* FUNC2 (struct device*) ; 

__attribute__((used)) static struct phy *FUNC3(struct device *dev,
					     struct of_phandle_args *args)
{
	struct phy_berlin_priv *priv = FUNC2(dev);
	int i;

	if (FUNC1(args->args[0] >= priv->nphys))
		return FUNC0(-ENODEV);

	for (i = 0; i < priv->nphys; i++) {
		if (priv->phys[i]->index == args->args[0])
			break;
	}

	if (i == priv->nphys)
		return FUNC0(-ENODEV);

	return priv->phys[i]->phy;
}