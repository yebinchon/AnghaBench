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
struct ni_gpct_device {int variant; struct comedi_device* dev; } ;
struct ni_gpct {unsigned int counter_index; unsigned int clock_period_ps; struct ni_gpct_device* counter_dev; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int GI_SRC_POL_INVERT ; 
 unsigned int GI_SRC_SEL_MASK ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int NI_GPCT_INVERT_CLOCK_SRC_BIT ; 
#define  NI_GPCT_NO_PRESCALE_CLOCK_SRC_BITS 133 
 unsigned int NI_GPCT_PRESCALE_MODE_CLOCK_SRC_MASK ; 
#define  NI_GPCT_PRESCALE_X2_CLOCK_SRC_BITS 132 
#define  NI_GPCT_PRESCALE_X8_CLOCK_SRC_BITS 131 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC5 (unsigned int,unsigned int*) ; 
#define  ni_gpct_variant_660x 130 
#define  ni_gpct_variant_e_series 129 
#define  ni_gpct_variant_m_series 128 
 int FUNC6 (unsigned int,unsigned int*) ; 
 scalar_t__ FUNC7 (struct ni_gpct_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ni_gpct*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct ni_gpct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct ni_gpct*) ; 

__attribute__((used)) static int FUNC11(struct ni_gpct *counter,
				unsigned int clock_source,
				unsigned int period_ns)
{
	struct ni_gpct_device *counter_dev = counter->counter_dev;
	unsigned int cidx = counter->counter_index;
	unsigned int bits = 0;
	int ret;

	switch (counter_dev->variant) {
	case ni_gpct_variant_660x:
		ret = FUNC5(clock_source, &bits);
		break;
	case ni_gpct_variant_e_series:
	case ni_gpct_variant_m_series:
	default:
		ret = FUNC6(clock_source, &bits);
		break;
	}
	if (ret) {
		struct comedi_device *dev = counter_dev->dev;

		FUNC4(dev->class_dev, "invalid clock source 0x%x\n",
			clock_source);
		return ret;
	}

	if (clock_source & NI_GPCT_INVERT_CLOCK_SRC_BIT)
		bits |= GI_SRC_POL_INVERT;
	FUNC8(counter, FUNC3(cidx),
			GI_SRC_SEL_MASK | GI_SRC_POL_INVERT, bits);
	FUNC9(counter, clock_source);

	if (FUNC7(counter_dev)) {
		bits = 0;
		switch (clock_source & NI_GPCT_PRESCALE_MODE_CLOCK_SRC_MASK) {
		case NI_GPCT_NO_PRESCALE_CLOCK_SRC_BITS:
			break;
		case NI_GPCT_PRESCALE_X2_CLOCK_SRC_BITS:
			bits |= FUNC0(counter_dev->variant);
			break;
		case NI_GPCT_PRESCALE_X8_CLOCK_SRC_BITS:
			bits |= FUNC1(counter_dev->variant);
			break;
		default:
			return -EINVAL;
		}
		FUNC8(counter, FUNC2(cidx),
				FUNC0(counter_dev->variant) |
				FUNC1(counter_dev->variant), bits);
	}
	counter->clock_period_ps = period_ns * 1000;
	FUNC10(counter);
	return 0;
}