#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ni_gpct {TYPE_1__* counter_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  variant; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (unsigned int,unsigned int*) ; 
 int FUNC1 (unsigned int,unsigned int*) ; 
#define  ni_gpct_variant_660x 130 
#define  ni_gpct_variant_e_series 129 
#define  ni_gpct_variant_m_series 128 
 int FUNC2 (unsigned int,unsigned int*) ; 
 int FUNC3 (unsigned int,unsigned int*) ; 
 unsigned int FUNC4 (struct ni_gpct*) ; 
 unsigned int FUNC5 (struct ni_gpct*) ; 
 unsigned int FUNC6 (struct ni_gpct*) ; 
 unsigned int FUNC7 (struct ni_gpct*) ; 

__attribute__((used)) static int FUNC8(struct ni_gpct *counter, unsigned int gate_index,
			       unsigned int *gate_source)
{
	unsigned int gate;
	int ret;

	switch (gate_index) {
	case 0:
		gate = FUNC7(counter);
		switch (counter->counter_dev->variant) {
		case ni_gpct_variant_e_series:
		case ni_gpct_variant_m_series:
		default:
			ret = FUNC3(gate, gate_source);
			break;
		case ni_gpct_variant_660x:
			ret = FUNC1(gate, gate_source);
			break;
		}
		if (ret)
			return ret;
		*gate_source |= FUNC6(counter);
		break;
	case 1:
		gate = FUNC5(counter);
		switch (counter->counter_dev->variant) {
		case ni_gpct_variant_e_series:
		case ni_gpct_variant_m_series:
		default:
			ret = FUNC2(gate, gate_source);
			break;
		case ni_gpct_variant_660x:
			ret = FUNC0(gate, gate_source);
			break;
		}
		if (ret)
			return ret;
		*gate_source |= FUNC4(counter);
		break;
	default:
		return -EINVAL;
	}
	return 0;
}