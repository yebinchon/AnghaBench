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
struct artpec6_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIECFG ; 
 int /*<<< orphan*/  PCIECFG_LTSSM_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct artpec6_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct artpec6_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct artpec6_pcie* FUNC2 (struct dw_pcie*) ; 

__attribute__((used)) static int FUNC3(struct dw_pcie *pci)
{
	struct artpec6_pcie *artpec6_pcie = FUNC2(pci);
	u32 val;

	val = FUNC0(artpec6_pcie, PCIECFG);
	val |= PCIECFG_LTSSM_ENABLE;
	FUNC1(artpec6_pcie, PCIECFG, val);

	return 0;
}