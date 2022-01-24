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
typedef  int u32 ;
struct imx6_pcie {struct dw_pcie* pci; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  PCIE_LINK_WIDTH_SPEED_CONTROL ; 
 int PORT_LOGIC_SPEED_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct dw_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct imx6_pcie *imx6_pcie)
{
	struct dw_pcie *pci = imx6_pcie->pci;
	struct device *dev = pci->dev;
	u32 tmp;
	unsigned int retries;

	for (retries = 0; retries < 200; retries++) {
		tmp = FUNC1(pci, PCIE_LINK_WIDTH_SPEED_CONTROL);
		/* Test if the speed change finished. */
		if (!(tmp & PORT_LOGIC_SPEED_CHANGE))
			return 0;
		FUNC2(100, 1000);
	}

	FUNC0(dev, "Speed change timeout\n");
	return -ETIMEDOUT;
}