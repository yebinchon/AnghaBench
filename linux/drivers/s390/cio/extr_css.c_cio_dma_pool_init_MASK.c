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
 int ENOMEM ; 
 int /*<<< orphan*/  cio_dma_pool ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(void)
{
	/* No need to free up the resources: compiled in */
	cio_dma_pool = FUNC1(FUNC0(), 1);
	if (!cio_dma_pool)
		return -ENOMEM;
	return 0;
}