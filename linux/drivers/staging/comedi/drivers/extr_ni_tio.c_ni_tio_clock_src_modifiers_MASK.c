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
struct ni_gpct_device {int /*<<< orphan*/  variant; } ;
struct ni_gpct {unsigned int counter_index; struct ni_gpct_device* counter_dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int GI_SRC_POL_INVERT ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int NI_GPCT_INVERT_CLOCK_SRC_BIT ; 
 unsigned int NI_GPCT_PRESCALE_X2_CLOCK_SRC_BITS ; 
 unsigned int NI_GPCT_PRESCALE_X8_CLOCK_SRC_BITS ; 
 int FUNC4 (struct ni_gpct const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC5(const struct ni_gpct *counter)
{
	struct ni_gpct_device *counter_dev = counter->counter_dev;
	unsigned int cidx = counter->counter_index;
	unsigned int counting_mode_bits =
		FUNC4(counter, FUNC2(cidx));
	unsigned int bits = 0;

	if (FUNC4(counter, FUNC3(cidx)) &
	    GI_SRC_POL_INVERT)
		bits |= NI_GPCT_INVERT_CLOCK_SRC_BIT;
	if (counting_mode_bits & FUNC0(counter_dev->variant))
		bits |= NI_GPCT_PRESCALE_X2_CLOCK_SRC_BITS;
	if (counting_mode_bits & FUNC1(counter_dev->variant))
		bits |= NI_GPCT_PRESCALE_X8_CLOCK_SRC_BITS;
	return bits;
}