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
typedef  scalar_t__ phys_addr_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xen_io_tlb_end ; 
 int /*<<< orphan*/  xen_io_tlb_start ; 

__attribute__((used)) static int FUNC6(dma_addr_t dma_addr)
{
	unsigned long bfn = FUNC1(dma_addr);
	unsigned long xen_pfn = FUNC3(bfn);
	phys_addr_t paddr = FUNC2(xen_pfn);

	/* If the address is outside our domain, it CAN
	 * have the same virtual address as another address
	 * in our domain. Therefore _only_ check address within our domain.
	 */
	if (FUNC4(FUNC0(paddr))) {
		return paddr >= FUNC5(xen_io_tlb_start) &&
		       paddr < FUNC5(xen_io_tlb_end);
	}
	return 0;
}