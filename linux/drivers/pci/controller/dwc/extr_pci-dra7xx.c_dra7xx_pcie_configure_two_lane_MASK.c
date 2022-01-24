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
struct regmap {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int PCIE_B0_B1_TSYNCEN ; 
 int PCIE_B1C0_MODE_SEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 scalar_t__ FUNC2 (struct device_node*,char*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,unsigned int,int,int) ; 
 struct regmap* FUNC4 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
					  u32 b1co_mode_sel_mask)
{
	struct device_node *np = dev->of_node;
	struct regmap *pcie_syscon;
	unsigned int pcie_reg;
	u32 mask;
	u32 val;

	pcie_syscon = FUNC4(np, "ti,syscon-lane-sel");
	if (FUNC0(pcie_syscon)) {
		FUNC1(dev, "unable to get ti,syscon-lane-sel\n");
		return -EINVAL;
	}

	if (FUNC2(np, "ti,syscon-lane-sel", 1,
				       &pcie_reg)) {
		FUNC1(dev, "couldn't get lane selection reg offset\n");
		return -EINVAL;
	}

	mask = b1co_mode_sel_mask | PCIE_B0_B1_TSYNCEN;
	val = PCIE_B1C0_MODE_SEL | PCIE_B0_B1_TSYNCEN;
	FUNC3(pcie_syscon, pcie_reg, mask, val);

	return 0;
}