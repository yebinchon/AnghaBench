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
struct ni_gpct_device {int** regs; } ;
struct ni_gpct {unsigned int counter_index; unsigned int chip_index; struct ni_gpct_device* counter_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int GI_SRC_SUBSEL ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int NI_GPCT_ANALOG_TRIGGER_OUT_CLOCK_SRC_BITS ; 
 unsigned int NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS ; 
 unsigned int NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS ; 
 unsigned int NI_GPCT_NEXT_TC_CLOCK_SRC_BITS ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int NI_GPCT_PXI10_CLOCK_SRC_BITS ; 
 unsigned int NI_GPCT_PXI_STAR_TRIGGER_CLOCK_SRC_BITS ; 
 unsigned int FUNC4 (unsigned int) ; 
 unsigned int NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS ; 
 unsigned int NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS ; 
 unsigned int NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS ; 
#define  NI_M_LOGIC_LOW_CLK 134 
 unsigned int NI_M_MAX_PFI_CHAN ; 
 unsigned int NI_M_MAX_RTSI_CHAN ; 
#define  NI_M_NEXT_GATE_CLK 133 
#define  NI_M_NEXT_TC_CLK 132 
 unsigned int FUNC5 (unsigned int) ; 
#define  NI_M_PXI10_CLK 131 
 unsigned int FUNC6 (unsigned int) ; 
#define  NI_M_TIMEBASE_1_CLK 130 
#define  NI_M_TIMEBASE_2_CLK 129 
#define  NI_M_TIMEBASE_3_CLK 128 
 unsigned int FUNC7 (struct ni_gpct const*) ; 
 int /*<<< orphan*/  FUNC8 (struct ni_gpct const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(const struct ni_gpct *counter,
					unsigned int *clk_src)
{
	struct ni_gpct_device *counter_dev = counter->counter_dev;
	unsigned int cidx = counter->counter_index;
	unsigned int chip = counter->chip_index;
	unsigned int second_gate_reg = FUNC1(cidx);
	unsigned int clock_source = 0;
	unsigned int src;
	unsigned int i;

	src = FUNC0(FUNC8(counter,
						  FUNC2(cidx)));

	switch (src) {
	case NI_M_TIMEBASE_1_CLK:
		clock_source = NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS;
		break;
	case NI_M_TIMEBASE_2_CLK:
		clock_source = NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS;
		break;
	case NI_M_TIMEBASE_3_CLK:
		if (counter_dev->regs[chip][second_gate_reg] & GI_SRC_SUBSEL)
			clock_source =
			    NI_GPCT_ANALOG_TRIGGER_OUT_CLOCK_SRC_BITS;
		else
			clock_source = NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS;
		break;
	case NI_M_LOGIC_LOW_CLK:
		clock_source = NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS;
		break;
	case NI_M_NEXT_GATE_CLK:
		if (counter_dev->regs[chip][second_gate_reg] & GI_SRC_SUBSEL)
			clock_source = NI_GPCT_PXI_STAR_TRIGGER_CLOCK_SRC_BITS;
		else
			clock_source = NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS;
		break;
	case NI_M_PXI10_CLK:
		clock_source = NI_GPCT_PXI10_CLOCK_SRC_BITS;
		break;
	case NI_M_NEXT_TC_CLK:
		clock_source = NI_GPCT_NEXT_TC_CLOCK_SRC_BITS;
		break;
	default:
		for (i = 0; i <= NI_M_MAX_RTSI_CHAN; ++i) {
			if (src == FUNC6(i)) {
				clock_source = FUNC4(i);
				break;
			}
		}
		if (i <= NI_M_MAX_RTSI_CHAN)
			break;
		for (i = 0; i <= NI_M_MAX_PFI_CHAN; ++i) {
			if (src == FUNC5(i)) {
				clock_source = FUNC3(i);
				break;
			}
		}
		if (i <= NI_M_MAX_PFI_CHAN)
			break;
		return -EINVAL;
	}
	clock_source |= FUNC7(counter);
	*clk_src = clock_source;
	return 0;
}