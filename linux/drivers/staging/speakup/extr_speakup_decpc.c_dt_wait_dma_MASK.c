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
 int /*<<< orphan*/  STAT_dma_ready ; 
 int STAT_dma_state ; 
 int dma_state ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(void)
{
	int timeout = 100, state = dma_state;

	if (!FUNC1(STAT_dma_ready))
		return 0;
	while (--timeout > 0) {
		if ((FUNC0() & STAT_dma_state) == state)
			return 1;
		FUNC2(50);
	}
	dma_state = FUNC0() & STAT_dma_state;
	return 1;
}