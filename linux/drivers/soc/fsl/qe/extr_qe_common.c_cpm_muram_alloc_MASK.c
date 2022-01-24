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
struct genpool_data_align {unsigned long align; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ,struct genpool_data_align*) ; 
 int /*<<< orphan*/  cpm_muram_lock ; 
 int /*<<< orphan*/  gen_pool_first_fit_align ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned long FUNC3(unsigned long size, unsigned long align)
{
	unsigned long start;
	unsigned long flags;
	struct genpool_data_align muram_pool_data;

	FUNC1(&cpm_muram_lock, flags);
	muram_pool_data.align = align;
	start = FUNC0(size, gen_pool_first_fit_align,
				       &muram_pool_data);
	FUNC2(&cpm_muram_lock, flags);
	return start;
}