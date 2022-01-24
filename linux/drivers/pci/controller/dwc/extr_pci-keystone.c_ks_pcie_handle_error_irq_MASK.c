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
typedef  int u32 ;
struct keystone_pcie {scalar_t__ is_am6; TYPE_1__* pci; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int AM6_ERR_AER ; 
 int ERR_AER ; 
 int ERR_AXI ; 
 int ERR_CORR ; 
 int ERR_FATAL ; 
 int /*<<< orphan*/  ERR_IRQ_STATUS ; 
 int ERR_NONFATAL ; 
 int ERR_SYS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct keystone_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct keystone_pcie*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(struct keystone_pcie *ks_pcie)
{
	u32 reg;
	struct device *dev = ks_pcie->pci->dev;

	reg = FUNC2(ks_pcie, ERR_IRQ_STATUS);
	if (!reg)
		return IRQ_NONE;

	if (reg & ERR_SYS)
		FUNC1(dev, "System Error\n");

	if (reg & ERR_FATAL)
		FUNC1(dev, "Fatal Error\n");

	if (reg & ERR_NONFATAL)
		FUNC0(dev, "Non Fatal Error\n");

	if (reg & ERR_CORR)
		FUNC0(dev, "Correctable Error\n");

	if (!ks_pcie->is_am6 && (reg & ERR_AXI))
		FUNC1(dev, "AXI tag lookup fatal Error\n");

	if (reg & ERR_AER || (ks_pcie->is_am6 && (reg & AM6_ERR_AER)))
		FUNC1(dev, "ECRC Error\n");

	FUNC3(ks_pcie, ERR_IRQ_STATUS, reg);

	return IRQ_HANDLED;
}