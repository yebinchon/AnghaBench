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
struct keystone_pcie {int dummy; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STATUS ; 
 int LTSSM_EN_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (struct dw_pcie*) ; 
 int FUNC2 (struct keystone_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct keystone_pcie*,int /*<<< orphan*/ ,int) ; 
 struct keystone_pcie* FUNC4 (struct dw_pcie*) ; 

__attribute__((used)) static int FUNC5(struct dw_pcie *pci)
{
	struct keystone_pcie *ks_pcie = FUNC4(pci);
	struct device *dev = pci->dev;
	u32 val;

	if (FUNC1(pci)) {
		FUNC0(dev, "link is already up\n");
		return 0;
	}

	/* Initiate Link Training */
	val = FUNC2(ks_pcie, CMD_STATUS);
	FUNC3(ks_pcie, CMD_STATUS, LTSSM_EN_VAL | val);

	return 0;
}