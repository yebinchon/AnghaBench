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
struct ni_gpct {int /*<<< orphan*/  counter_index; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 unsigned int CR_INVERT ; 
 unsigned int GI_GATE2_MODE ; 
 unsigned int GI_GATE2_POL_INVERT ; 
 unsigned int GI_GATING_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int NI_GPCT_DISABLED_GATE_SELECT ; 
 int /*<<< orphan*/  FUNC2 (struct ni_gpct*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static inline void FUNC3(struct ni_gpct *counter,
					 unsigned int src)
{
	/*
	 * The GI_GATE2_MODE bit was previously set in the code that also sets
	 * the gate2 source.
	 * We'll set mode bits _after_ source bits now, and thus, this function
	 * will effectively enable the second gate after all bits are set.
	 */
	unsigned int mode_bits = GI_GATE2_MODE;

	if (FUNC0(src) & NI_GPCT_DISABLED_GATE_SELECT)
		/*
		 * Allowing bitwise comparison here to allow non-zero raw
		 * register value to be used for channel when disabling.
		 */
		mode_bits = GI_GATING_DISABLED;
	if (src & CR_INVERT)
		mode_bits |= GI_GATE2_POL_INVERT;

	FUNC2(counter, FUNC1(counter->counter_index),
			GI_GATE2_POL_INVERT | GI_GATE2_MODE, mode_bits);
}