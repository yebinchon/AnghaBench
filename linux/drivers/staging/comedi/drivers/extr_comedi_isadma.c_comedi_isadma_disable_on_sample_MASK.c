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

/* Variables and functions */
 unsigned long FUNC0 () ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

unsigned int FUNC5(unsigned int dma_chan,
					     unsigned int size)
{
	int stalled = 0;
	unsigned long flags;
	unsigned int residue;
	unsigned int new_residue;

	residue = FUNC1(dma_chan);
	while (residue % size) {
		/* residue is a partial sample, enable DMA to allow more data */
		flags = FUNC0();
		FUNC2(dma_chan);
		FUNC3(flags);

		FUNC4(2);
		new_residue = FUNC1(dma_chan);

		/* is DMA stalled? */
		if (new_residue == residue) {
			stalled++;
			if (stalled > 10)
				break;
		} else {
			residue = new_residue;
			stalled = 0;
		}
	}
	return residue;
}