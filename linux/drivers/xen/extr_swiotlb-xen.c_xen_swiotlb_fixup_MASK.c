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
 int IO_TLB_SEGSIZE ; 
 int IO_TLB_SHIFT ; 
 int /*<<< orphan*/  MAX_DMA_BITS ; 
 int PAGE_SHIFT ; 
 int FUNC0 (int) ; 
 int FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (scalar_t__,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(void *buf, size_t size, unsigned long nslabs)
{
	int i, rc;
	int dma_bits;
	dma_addr_t dma_handle;
	phys_addr_t p = FUNC2(buf);

	dma_bits = FUNC0(IO_TLB_SEGSIZE << IO_TLB_SHIFT) + PAGE_SHIFT;

	i = 0;
	do {
		int slabs = FUNC1(nslabs - i, (unsigned long)IO_TLB_SEGSIZE);

		do {
			rc = FUNC3(
				p + (i << IO_TLB_SHIFT),
				FUNC0(slabs << IO_TLB_SHIFT),
				dma_bits, &dma_handle);
		} while (rc && dma_bits++ < MAX_DMA_BITS);
		if (rc)
			return rc;

		i += slabs;
	} while (i < nslabs);
	return 0;
}