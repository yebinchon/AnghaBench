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
struct cdns_pcie {TYPE_1__* mem_res; int /*<<< orphan*/  bus; scalar_t__ is_rc; } ;
struct TYPE_2__ {scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int CDNS_PCIE_AT_OB_REGION_DESC0_HARDCODED_RID ; 
 int CDNS_PCIE_AT_OB_REGION_DESC0_TYPE_IO ; 
 int CDNS_PCIE_AT_OB_REGION_DESC0_TYPE_MEM ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct cdns_pcie*,int /*<<< orphan*/ ,int) ; 
 unsigned long long FUNC12 (size_t) ; 
 int FUNC13 (unsigned long long) ; 
 int FUNC14 (unsigned long long) ; 
 int FUNC15 (unsigned long long) ; 

void FUNC16(struct cdns_pcie *pcie, u8 fn,
				   u32 r, bool is_io,
				   u64 cpu_addr, u64 pci_addr, size_t size)
{
	/*
	 * roundup_pow_of_two() returns an unsigned long, which is not suited
	 * for 64bit values.
	 */
	u64 sz = 1ULL << FUNC12(size - 1);
	int nbits = FUNC13(sz);
	u32 addr0, addr1, desc0, desc1;

	if (nbits < 8)
		nbits = 8;

	/* Set the PCI address */
	addr0 = FUNC8(nbits) |
		(FUNC14(pci_addr) & FUNC10(31, 8));
	addr1 = FUNC15(pci_addr);

	FUNC11(pcie, FUNC7(r), addr0);
	FUNC11(pcie, FUNC9(r), addr1);

	/* Set the PCIe header descriptor */
	if (is_io)
		desc0 = CDNS_PCIE_AT_OB_REGION_DESC0_TYPE_IO;
	else
		desc0 = CDNS_PCIE_AT_OB_REGION_DESC0_TYPE_MEM;
	desc1 = 0;

	/*
	 * Whatever Bit [23] is set or not inside DESC0 register of the outbound
	 * PCIe descriptor, the PCI function number must be set into
	 * Bits [26:24] of DESC0 anyway.
	 *
	 * In Root Complex mode, the function number is always 0 but in Endpoint
	 * mode, the PCIe controller may support more than one function. This
	 * function number needs to be set properly into the outbound PCIe
	 * descriptor.
	 *
	 * Besides, setting Bit [23] is mandatory when in Root Complex mode:
	 * then the driver must provide the bus, resp. device, number in
	 * Bits [7:0] of DESC1, resp. Bits[31:27] of DESC0. Like the function
	 * number, the device number is always 0 in Root Complex mode.
	 *
	 * However when in Endpoint mode, we can clear Bit [23] of DESC0, hence
	 * the PCIe controller will use the captured values for the bus and
	 * device numbers.
	 */
	if (pcie->is_rc) {
		/* The device and function numbers are always 0. */
		desc0 |= CDNS_PCIE_AT_OB_REGION_DESC0_HARDCODED_RID |
			 FUNC4(0);
		desc1 |= FUNC6(pcie->bus);
	} else {
		/*
		 * Use captured values for bus and device numbers but still
		 * need to set the function number.
		 */
		desc0 |= FUNC4(fn);
	}

	FUNC11(pcie, FUNC3(r), desc0);
	FUNC11(pcie, FUNC5(r), desc1);

	/* Set the CPU address */
	cpu_addr -= pcie->mem_res->start;
	addr0 = FUNC1(nbits) |
		(FUNC14(cpu_addr) & FUNC10(31, 8));
	addr1 = FUNC15(cpu_addr);

	FUNC11(pcie, FUNC0(r), addr0);
	FUNC11(pcie, FUNC2(r), addr1);
}