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
struct tegra_pcie_port {unsigned int lanes; struct phy** phys; int /*<<< orphan*/  np; TYPE_1__* pcie; } ;
struct phy {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  phy ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 int FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned int,int) ; 
 struct phy** FUNC3 (struct device*,int,unsigned int,int /*<<< orphan*/ ) ; 
 struct phy* FUNC4 (struct device*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC5 (struct phy*) ; 

__attribute__((used)) static int FUNC6(struct tegra_pcie_port *port)
{
	struct device *dev = port->pcie->dev;
	struct phy *phy;
	unsigned int i;
	int err;

	port->phys = FUNC3(dev, sizeof(phy), port->lanes, GFP_KERNEL);
	if (!port->phys)
		return -ENOMEM;

	for (i = 0; i < port->lanes; i++) {
		phy = FUNC4(dev, port->np, "pcie", i);
		if (FUNC0(phy)) {
			FUNC2(dev, "failed to get PHY#%u: %ld\n", i,
				FUNC1(phy));
			return FUNC1(phy);
		}

		err = FUNC5(phy);
		if (err < 0) {
			FUNC2(dev, "failed to initialize PHY#%u: %d\n", i,
				err);
			return err;
		}

		port->phys[i] = phy;
	}

	return 0;
}