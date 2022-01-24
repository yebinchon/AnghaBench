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
 unsigned int CR_INVERT ; 
 unsigned int GI_GATE2_MODE ; 
 unsigned int GI_GATE2_POL_INVERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int NI_GPCT_DISABLED_GATE_SELECT ; 
 unsigned int FUNC1 (struct ni_gpct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned int FUNC2(struct ni_gpct *counter)
{
	unsigned int mode = FUNC1(
		counter, FUNC0(counter->counter_index));
	unsigned int ret = 0;

	if (!(mode & GI_GATE2_MODE))
		ret |= NI_GPCT_DISABLED_GATE_SELECT;
	if (mode & GI_GATE2_POL_INVERT)
		ret |= CR_INVERT;

	return ret;
}