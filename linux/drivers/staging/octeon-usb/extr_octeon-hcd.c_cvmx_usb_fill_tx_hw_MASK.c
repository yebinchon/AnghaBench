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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct octeon_hcd {int /*<<< orphan*/  index; } ;
struct cvmx_usb_tx_fifo {int head; int tail; TYPE_1__* entry; } ;
struct TYPE_2__ {int address; int size; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_CHANNELS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct octeon_hcd *usb,
			       struct cvmx_usb_tx_fifo *fifo, int available)
{
	/*
	 * We're done either when there isn't anymore space or the software FIFO
	 * is empty
	 */
	while (available && (fifo->head != fifo->tail)) {
		int i = fifo->tail;
		const u32 *ptr = FUNC2(fifo->entry[i].address);
		u64 csr_address = FUNC1(fifo->entry[i].channel,
						   usb->index) ^ 4;
		int words = available;

		/* Limit the amount of data to what the SW fifo has */
		if (fifo->entry[i].size <= available) {
			words = fifo->entry[i].size;
			fifo->tail++;
			if (fifo->tail > MAX_CHANNELS)
				fifo->tail = 0;
		}

		/* Update the next locations and counts */
		available -= words;
		fifo->entry[i].address += words * 4;
		fifo->entry[i].size -= words;

		/*
		 * Write the HW fifo data. The read every three writes is due
		 * to an errata on CN3XXX chips
		 */
		while (words > 3) {
			FUNC4(csr_address, *ptr++);
			FUNC4(csr_address, *ptr++);
			FUNC4(csr_address, *ptr++);
			FUNC3(
					FUNC0(usb->index));
			words -= 3;
		}
		FUNC4(csr_address, *ptr++);
		if (--words) {
			FUNC4(csr_address, *ptr++);
			if (--words)
				FUNC4(csr_address, *ptr++);
		}
		FUNC3(FUNC0(usb->index));
	}
	return fifo->head != fifo->tail;
}