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
 unsigned int CR_EDGE ; 
 unsigned int CR_INVERT ; 
 unsigned int GI_GATE_POL_INVERT ; 
 unsigned int GI_GATING_DISABLED ; 
 unsigned int GI_GATING_MODE_MASK ; 
 unsigned int GI_LEVEL_GATING ; 
 unsigned int GI_RISING_EDGE_GATING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int NI_GPCT_DISABLED_GATE_SELECT ; 
 int /*<<< orphan*/  FUNC2 (struct ni_gpct*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static inline void FUNC3(struct ni_gpct *counter,
					unsigned int src)
{
	unsigned int mode_bits = 0;

	if (FUNC0(src) & NI_GPCT_DISABLED_GATE_SELECT) {
		/*
		 * Allowing bitwise comparison here to allow non-zero raw
		 * register value to be used for channel when disabling.
		 */
		mode_bits = GI_GATING_DISABLED;
	} else {
		if (src & CR_INVERT)
			mode_bits |= GI_GATE_POL_INVERT;
		if (src & CR_EDGE)
			mode_bits |= GI_RISING_EDGE_GATING;
		else
			mode_bits |= GI_LEVEL_GATING;
	}
	FUNC2(counter, FUNC1(counter->counter_index),
			GI_GATE_POL_INVERT | GI_GATING_MODE_MASK,
			mode_bits);
}