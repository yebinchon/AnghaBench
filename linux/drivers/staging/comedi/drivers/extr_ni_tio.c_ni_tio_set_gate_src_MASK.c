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
struct ni_gpct {struct ni_gpct_device* counter_dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 unsigned int NI_GPCT_DISABLED_GATE_SELECT ; 
 int FUNC1 (struct ni_gpct*,int) ; 
 int FUNC2 (struct ni_gpct*,int) ; 
#define  ni_gpct_variant_660x 130 
#define  ni_gpct_variant_e_series 129 
#define  ni_gpct_variant_m_series 128 
 int FUNC3 (struct ni_gpct*,int) ; 
 int FUNC4 (struct ni_gpct*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ni_gpct_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ni_gpct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct ni_gpct*,unsigned int) ; 

int FUNC8(struct ni_gpct *counter,
			unsigned int gate, unsigned int src)
{
	struct ni_gpct_device *counter_dev = counter->counter_dev;
	/*
	 * mask off disable flag.  This high bit still passes CR_CHAN.
	 * Doing this allows one to both set the gate as disabled, but also
	 * change the route value of the gate.
	 */
	int chan = FUNC0(src) & (~NI_GPCT_DISABLED_GATE_SELECT);
	int ret;

	switch (gate) {
	case 0:
		/* 1.  start by disabling gate */
		FUNC7(counter, NI_GPCT_DISABLED_GATE_SELECT);
		/* 2.  set the requested gate source */
		switch (counter_dev->variant) {
		case ni_gpct_variant_e_series:
		case ni_gpct_variant_m_series:
			ret = FUNC3(counter, chan);
			break;
		case ni_gpct_variant_660x:
			ret = FUNC1(counter, chan);
			break;
		default:
			return -EINVAL;
		}
		if (ret)
			return ret;
		/* 3.  reenable & set mode to starts things back up */
		FUNC7(counter, src);
		break;
	case 1:
		if (!FUNC5(counter_dev))
			return -EINVAL;

		/* 1.  start by disabling gate */
		FUNC6(counter, NI_GPCT_DISABLED_GATE_SELECT);
		/* 2.  set the requested gate source */
		switch (counter_dev->variant) {
		case ni_gpct_variant_m_series:
			ret = FUNC4(counter, chan);
			break;
		case ni_gpct_variant_660x:
			ret = FUNC2(counter, chan);
			break;
		default:
			return -EINVAL;
		}
		if (ret)
			return ret;
		/* 3.  reenable & set mode to starts things back up */
		FUNC6(counter, src);
		break;
	default:
		return -EINVAL;
	}
	return 0;
}