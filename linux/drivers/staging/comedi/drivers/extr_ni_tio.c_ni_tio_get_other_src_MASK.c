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
struct ni_gpct_device {scalar_t__ variant; } ;
struct ni_gpct {unsigned int counter_index; struct ni_gpct_device* counter_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 unsigned int FUNC3 (int) ; 
 unsigned int NI_GPCT_SOURCE_ENCODER_A ; 
 unsigned int NI_GPCT_SOURCE_ENCODER_B ; 
 unsigned int NI_GPCT_SOURCE_ENCODER_Z ; 
 scalar_t__ ni_gpct_variant_m_series ; 
 unsigned int FUNC4 (struct ni_gpct*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct ni_gpct *counter, unsigned int index,
				unsigned int *source)
{
	struct ni_gpct_device *counter_dev = counter->counter_dev;
	unsigned int cidx = counter->counter_index;
	unsigned int abz_reg, shift, mask;

	if (counter_dev->variant != ni_gpct_variant_m_series)
		/* A,B,Z only valid for m-series */
		return -EINVAL;

	abz_reg = FUNC0(cidx);

	/* allow for new device-global names */
	if (index == NI_GPCT_SOURCE_ENCODER_A ||
	    (index >= FUNC1(0) && index <= FUNC1(-1))) {
		shift = 10;
	} else if (index == NI_GPCT_SOURCE_ENCODER_B ||
	    (index >= FUNC2(0) && index <= FUNC2(-1))) {
		shift = 5;
	} else if (index == NI_GPCT_SOURCE_ENCODER_Z ||
	    (index >= FUNC3(0) && index <= FUNC3(-1))) {
		shift = 0;
	} else {
		return -EINVAL;
	}

	mask = 0x1f;

	*source = (FUNC4(counter, abz_reg) >> shift) & mask;
	return 0;
}