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
typedef  int /*<<< orphan*/  u32 ;
struct dw_pcie {int dummy; } ;
struct dra7xx_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LTSSM_EN ; 
 int /*<<< orphan*/  PCIECTRL_DRA7XX_CONF_DEVICE_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct dra7xx_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dra7xx_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dra7xx_pcie* FUNC2 (struct dw_pcie*) ; 

__attribute__((used)) static void FUNC3(struct dw_pcie *pci)
{
	struct dra7xx_pcie *dra7xx = FUNC2(pci);
	u32 reg;

	reg = FUNC0(dra7xx, PCIECTRL_DRA7XX_CONF_DEVICE_CMD);
	reg &= ~LTSSM_EN;
	FUNC1(dra7xx, PCIECTRL_DRA7XX_CONF_DEVICE_CMD, reg);
}