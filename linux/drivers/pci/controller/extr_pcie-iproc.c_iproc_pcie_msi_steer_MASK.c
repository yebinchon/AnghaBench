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
typedef  int /*<<< orphan*/  u64 ;
struct iproc_pcie {int type; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IPROC_PCIE_PAXB_V2 129 
#define  IPROC_PCIE_PAXC_V2 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct iproc_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iproc_pcie*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct iproc_pcie*,struct device_node*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct iproc_pcie *pcie,
				struct device_node *msi_node)
{
	struct device *dev = pcie->dev;
	int ret;
	u64 msi_addr;

	ret = FUNC3(pcie, msi_node, &msi_addr);
	if (ret < 0) {
		FUNC0(dev, "msi steering failed\n");
		return ret;
	}

	switch (pcie->type) {
	case IPROC_PCIE_PAXB_V2:
		ret = FUNC1(pcie, msi_addr);
		if (ret)
			return ret;
		break;
	case IPROC_PCIE_PAXC_V2:
		FUNC2(pcie, msi_addr, true);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}