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
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

unsigned int FUNC4(unsigned int dma_chan)
{
	unsigned long flags;
	unsigned int residue;

	flags = FUNC0();
	FUNC1(dma_chan);
	residue = FUNC2(dma_chan);
	FUNC3(flags);

	return residue;
}