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
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STATUS ; 
 int LTSSM_EN_VAL ; 
 int FUNC0 (struct keystone_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct keystone_pcie*,int /*<<< orphan*/ ,int) ; 
 struct keystone_pcie* FUNC2 (struct dw_pcie*) ; 

__attribute__((used)) static void FUNC3(struct dw_pcie *pci)
{
	struct keystone_pcie *ks_pcie = FUNC2(pci);
	u32 val;

	/* Disable Link training */
	val = FUNC0(ks_pcie, CMD_STATUS);
	val &= ~LTSSM_EN_VAL;
	FUNC1(ks_pcie, CMD_STATUS, LTSSM_EN_VAL | val);
}