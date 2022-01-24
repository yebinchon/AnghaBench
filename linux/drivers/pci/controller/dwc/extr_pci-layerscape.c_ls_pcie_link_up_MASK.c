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
struct ls_pcie {TYPE_1__* drvdata; scalar_t__ lut; } ;
struct dw_pcie {int dummy; } ;
struct TYPE_2__ {int ltssm_shift; scalar_t__ lut_dbg; } ;

/* Variables and functions */
 int LTSSM_PCIE_L0 ; 
 int LTSSM_STATE_MASK ; 
 int FUNC0 (scalar_t__) ; 
 struct ls_pcie* FUNC1 (struct dw_pcie*) ; 

__attribute__((used)) static int FUNC2(struct dw_pcie *pci)
{
	struct ls_pcie *pcie = FUNC1(pci);
	u32 state;

	state = (FUNC0(pcie->lut + pcie->drvdata->lut_dbg) >>
		 pcie->drvdata->ltssm_shift) &
		 LTSSM_STATE_MASK;

	if (state < LTSSM_PCIE_L0)
		return 0;

	return 1;
}