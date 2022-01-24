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
struct ni_gpct_device {struct ni_gpct* counters; } ;
struct ni_gpct {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int NI_COUNTER_NAMES_BASE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 unsigned int FUNC3 (int) ; 
 unsigned int NI_MAX_COUNTERS ; 
 int FUNC4 (struct ni_gpct*,int,unsigned int*) ; 
 int FUNC5 (struct ni_gpct*,unsigned int,unsigned int*) ; 

int FUNC6(struct ni_gpct_device *counter_dev, unsigned int dest)
{
	/* we need to know the actual counter below... */
	int ctr_index = (dest - NI_COUNTER_NAMES_BASE) % NI_MAX_COUNTERS;
	struct ni_gpct *counter = &counter_dev->counters[ctr_index];
	int ret = 1;
	unsigned int reg;

	if (dest >= FUNC0(0) && dest <= FUNC3(-1)) {
		ret = FUNC5(counter, dest, &reg);
	} else if (dest >= FUNC2(0) && dest <= FUNC2(-1)) {
		ret = FUNC4(counter, 0, &reg);
	} else if (dest >= FUNC1(0) && dest <= FUNC1(-1)) {
		ret = FUNC4(counter, 1, &reg);
	/*
	 * This case is not possible through this interface.  A user must use
	 * INSN_CONFIG_SET_CLOCK_SRC instead.
	 * } else if (dest >= NI_CtrSource(0) && dest <= NI_CtrSource(-1)) {
	 *	ret = ni_tio_set_clock_src(counter, &reg, &period_ns);
	 */
	}

	if (ret)
		return -EINVAL;

	return reg;
}