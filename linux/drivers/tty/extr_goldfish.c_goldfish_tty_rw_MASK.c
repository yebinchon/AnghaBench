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
struct goldfish_tty {scalar_t__ version; int /*<<< orphan*/  dev; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  unsigned long dma_addr_t ;

/* Variables and functions */
 int DMA_FROM_DEVICE ; 
 int DMA_TO_DEVICE ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,void*,unsigned long,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC4 (struct goldfish_tty*,unsigned long,unsigned int,int) ; 

__attribute__((used)) static void FUNC5(struct goldfish_tty *qtty,
			    unsigned long addr,
			    unsigned int count,
			    int is_write)
{
	dma_addr_t dma_handle;
	enum dma_data_direction dma_dir;

	dma_dir = (is_write ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
	if (qtty->version > 0) {
		/*
		 * Goldfish TTY for Ranchu platform uses
		 * physical addresses and DMA for read/write operations
		 */
		unsigned long addr_end = addr + count;

		while (addr < addr_end) {
			unsigned long pg_end = (addr & PAGE_MASK) + PAGE_SIZE;
			unsigned long next =
					pg_end < addr_end ? pg_end : addr_end;
			unsigned long avail = next - addr;

			/*
			 * Map the buffer's virtual address to the DMA address
			 * so the buffer can be accessed by the device.
			 */
			dma_handle = FUNC1(qtty->dev, (void *)addr,
						    avail, dma_dir);

			if (FUNC2(qtty->dev, dma_handle)) {
				FUNC0(qtty->dev, "tty: DMA mapping error.\n");
				return;
			}
			FUNC4(qtty, dma_handle, avail, is_write);

			/*
			 * Unmap the previously mapped region after
			 * the completion of the read/write operation.
			 */
			FUNC3(qtty->dev, dma_handle, avail, dma_dir);

			addr += avail;
		}
	} else {
		/*
		 * Old style Goldfish TTY used on the Goldfish platform
		 * uses virtual addresses.
		 */
		FUNC4(qtty, addr, count, is_write);
	}
}