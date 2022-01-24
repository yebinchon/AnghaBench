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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct cdns_pcie {TYPE_1__* mem_res; int /*<<< orphan*/  bus; scalar_t__ is_rc; } ;
struct TYPE_2__ {scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int CDNS_PCIE_AT_OB_REGION_DESC0_HARDCODED_RID ; 
 int CDNS_PCIE_AT_OB_REGION_DESC0_TYPE_NORMAL_MSG ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct cdns_pcie*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(struct cdns_pcie *pcie, u8 fn,
						  u32 r, u64 cpu_addr)
{
	u32 addr0, addr1, desc0, desc1;

	desc0 = CDNS_PCIE_AT_OB_REGION_DESC0_TYPE_NORMAL_MSG;
	desc1 = 0;

	/* See cdns_pcie_set_outbound_region() comments above. */
	if (pcie->is_rc) {
		desc0 |= CDNS_PCIE_AT_OB_REGION_DESC0_HARDCODED_RID |
			 FUNC4(0);
		desc1 |= FUNC6(pcie->bus);
	} else {
		desc0 |= FUNC4(fn);
	}

	/* Set the CPU address */
	cpu_addr -= pcie->mem_res->start;
	addr0 = FUNC1(17) |
		(FUNC11(cpu_addr) & FUNC9(31, 8));
	addr1 = FUNC12(cpu_addr);

	FUNC10(pcie, FUNC7(r), 0);
	FUNC10(pcie, FUNC8(r), 0);
	FUNC10(pcie, FUNC3(r), desc0);
	FUNC10(pcie, FUNC5(r), desc1);
	FUNC10(pcie, FUNC0(r), addr0);
	FUNC10(pcie, FUNC2(r), addr1);
}