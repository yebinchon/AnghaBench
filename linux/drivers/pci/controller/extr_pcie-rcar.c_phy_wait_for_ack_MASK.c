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
struct rcar_pcie {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  H1_PCIEPHYADRR ; 
 int PHY_ACK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct rcar_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct rcar_pcie *pcie)
{
	struct device *dev = pcie->dev;
	unsigned int timeout = 100;

	while (timeout--) {
		if (FUNC1(pcie, H1_PCIEPHYADRR) & PHY_ACK)
			return 0;

		FUNC2(100);
	}

	FUNC0(dev, "Access to PCIe phy timed out\n");

	return -ETIMEDOUT;
}