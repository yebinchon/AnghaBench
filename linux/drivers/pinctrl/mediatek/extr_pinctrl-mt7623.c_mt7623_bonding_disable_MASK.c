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
struct platform_device {int dummy; } ;
struct mtk_pinctrl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOND_I2S_CLR ; 
 int /*<<< orphan*/  BOND_MSDC0E_CLR ; 
 int /*<<< orphan*/  BOND_PCIE_CLR ; 
 int /*<<< orphan*/  PIN_BOND_REG0 ; 
 int /*<<< orphan*/  PIN_BOND_REG1 ; 
 int /*<<< orphan*/  PIN_BOND_REG2 ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_pinctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mtk_pinctrl* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static void FUNC2(struct platform_device *pdev)
{
	struct mtk_pinctrl *hw = FUNC1(pdev);

	FUNC0(hw, 0, PIN_BOND_REG0, BOND_PCIE_CLR, BOND_PCIE_CLR);
	FUNC0(hw, 0, PIN_BOND_REG1, BOND_I2S_CLR, BOND_I2S_CLR);
	FUNC0(hw, 0, PIN_BOND_REG2, BOND_MSDC0E_CLR, BOND_MSDC0E_CLR);
}