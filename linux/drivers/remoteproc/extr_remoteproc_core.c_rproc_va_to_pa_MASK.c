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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

phys_addr_t FUNC7(void *cpu_addr)
{
	/*
	 * Return physical address according to virtual address location
	 * - in vmalloc: if region ioremapped or defined as dma_alloc_coherent
	 * - in kernel: if region allocated in generic dma memory pool
	 */
	if (FUNC1(cpu_addr)) {
		return FUNC3(FUNC6(cpu_addr)) +
				    FUNC2(cpu_addr);
	}

	FUNC0(!FUNC4(cpu_addr));
	return FUNC5(cpu_addr);
}