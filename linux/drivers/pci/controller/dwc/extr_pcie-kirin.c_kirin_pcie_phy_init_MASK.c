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
struct kirin_pcie {TYPE_1__* pci; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCIE_APB_PHY_CTRL0 ; 
 int /*<<< orphan*/  PCIE_APB_PHY_CTRL1 ; 
 int /*<<< orphan*/  PCIE_APB_PHY_STATUS0 ; 
 int PHY_PWR_DOWN_BIT ; 
 int PHY_REF_PAD_BIT ; 
 int PHY_RST_ACK_BIT ; 
 int PIPE_CLK_STABLE ; 
 int /*<<< orphan*/  PIPE_CLK_WAIT_MAX ; 
 int /*<<< orphan*/  PIPE_CLK_WAIT_MIN ; 
 int /*<<< orphan*/  TIME_PHY_PD_MAX ; 
 int /*<<< orphan*/  TIME_PHY_PD_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct kirin_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kirin_pcie*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct kirin_pcie *kirin_pcie)
{
	struct device *dev = kirin_pcie->pci->dev;
	u32 reg_val;

	reg_val = FUNC1(kirin_pcie, PCIE_APB_PHY_CTRL1);
	reg_val &= ~PHY_REF_PAD_BIT;
	FUNC2(kirin_pcie, reg_val, PCIE_APB_PHY_CTRL1);

	reg_val = FUNC1(kirin_pcie, PCIE_APB_PHY_CTRL0);
	reg_val &= ~PHY_PWR_DOWN_BIT;
	FUNC2(kirin_pcie, reg_val, PCIE_APB_PHY_CTRL0);
	FUNC3(TIME_PHY_PD_MIN, TIME_PHY_PD_MAX);

	reg_val = FUNC1(kirin_pcie, PCIE_APB_PHY_CTRL1);
	reg_val &= ~PHY_RST_ACK_BIT;
	FUNC2(kirin_pcie, reg_val, PCIE_APB_PHY_CTRL1);

	FUNC3(PIPE_CLK_WAIT_MIN, PIPE_CLK_WAIT_MAX);
	reg_val = FUNC1(kirin_pcie, PCIE_APB_PHY_STATUS0);
	if (reg_val & PIPE_CLK_STABLE) {
		FUNC0(dev, "PIPE clk is not stable\n");
		return -EINVAL;
	}

	return 0;
}