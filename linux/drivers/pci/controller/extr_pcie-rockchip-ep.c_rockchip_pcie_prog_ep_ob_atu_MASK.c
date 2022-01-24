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
typedef  unsigned long long u64 ;
typedef  int u32 ;
struct rockchip_pcie {TYPE_1__* mem_res; } ;
struct TYPE_2__ {scalar_t__ start; } ;

/* Variables and functions */
 int AXI_WRAPPER_NOR_MSG ; 
 int PCIE_CORE_OB_REGION_ADDR0_LO_ADDR ; 
 int PCIE_CORE_OB_REGION_ADDR0_NUM_BITS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 unsigned long long FUNC7 (size_t) ; 
 int FUNC8 (unsigned long long) ; 
 int FUNC9 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC10 (struct rockchip_pcie*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (unsigned long long) ; 

__attribute__((used)) static void FUNC12(struct rockchip_pcie *rockchip, u8 fn,
					 u32 r, u32 type, u64 cpu_addr,
					 u64 pci_addr, size_t size)
{
	u64 sz = 1ULL << FUNC7(size - 1);
	int num_pass_bits = FUNC8(sz);
	u32 addr0, addr1, desc0, desc1;
	bool is_nor_msg = (type == AXI_WRAPPER_NOR_MSG);

	/* The minimal region size is 1MB */
	if (num_pass_bits < 8)
		num_pass_bits = 8;

	cpu_addr -= rockchip->mem_res->start;
	addr0 = ((is_nor_msg ? 0x10 : (num_pass_bits - 1)) &
		PCIE_CORE_OB_REGION_ADDR0_NUM_BITS) |
		(FUNC9(cpu_addr) & PCIE_CORE_OB_REGION_ADDR0_LO_ADDR);
	addr1 = FUNC11(is_nor_msg ? cpu_addr : pci_addr);
	desc0 = FUNC3(fn) | type;
	desc1 = 0;

	if (is_nor_msg) {
		FUNC10(rockchip, 0,
				    FUNC5(r));
		FUNC10(rockchip, 0,
				    FUNC6(r));
		FUNC10(rockchip, desc0,
				    FUNC2(r));
		FUNC10(rockchip, desc1,
				    FUNC4(r));
	} else {
		/* PCI bus address region */
		FUNC10(rockchip, addr0,
				    FUNC5(r));
		FUNC10(rockchip, addr1,
				    FUNC6(r));
		FUNC10(rockchip, desc0,
				    FUNC2(r));
		FUNC10(rockchip, desc1,
				    FUNC4(r));

		addr0 =
		    ((num_pass_bits - 1) & PCIE_CORE_OB_REGION_ADDR0_NUM_BITS) |
		    (FUNC9(cpu_addr) &
		     PCIE_CORE_OB_REGION_ADDR0_LO_ADDR);
		addr1 = FUNC11(cpu_addr);
	}

	/* CPU bus address region */
	FUNC10(rockchip, addr0,
			    FUNC0(r));
	FUNC10(rockchip, addr1,
			    FUNC1(r));
}