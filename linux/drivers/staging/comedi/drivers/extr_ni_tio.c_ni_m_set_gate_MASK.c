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
struct ni_gpct {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int EINVAL ; 
#define  NI_GPCT_AI_START1_GATE_SELECT 135 
#define  NI_GPCT_AI_START2_GATE_SELECT 134 
#define  NI_GPCT_ANALOG_TRIGGER_OUT_GATE_SELECT 133 
#define  NI_GPCT_LOGIC_LOW_GATE_SELECT 132 
#define  NI_GPCT_NEXT_OUT_GATE_SELECT 131 
#define  NI_GPCT_NEXT_SOURCE_GATE_SELECT 130 
 unsigned int FUNC1 (unsigned int) ; 
#define  NI_GPCT_PXI_STAR_TRIGGER_GATE_SELECT 129 
 unsigned int FUNC2 (unsigned int) ; 
#define  NI_GPCT_TIMESTAMP_MUX_GATE_SELECT 128 
 unsigned int NI_M_MAX_PFI_CHAN ; 
 unsigned int NI_M_MAX_RTSI_CHAN ; 
 int /*<<< orphan*/  FUNC3 (struct ni_gpct*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct ni_gpct *counter, unsigned int gate_source)
{
	unsigned int chan = FUNC0(gate_source);
	unsigned int gate_sel;
	unsigned int i;

	switch (chan) {
	case NI_GPCT_TIMESTAMP_MUX_GATE_SELECT:
	case NI_GPCT_AI_START2_GATE_SELECT:
	case NI_GPCT_PXI_STAR_TRIGGER_GATE_SELECT:
	case NI_GPCT_NEXT_OUT_GATE_SELECT:
	case NI_GPCT_AI_START1_GATE_SELECT:
	case NI_GPCT_NEXT_SOURCE_GATE_SELECT:
	case NI_GPCT_ANALOG_TRIGGER_OUT_GATE_SELECT:
	case NI_GPCT_LOGIC_LOW_GATE_SELECT:
		gate_sel = chan & 0x1f;
		break;
	default:
		for (i = 0; i <= NI_M_MAX_RTSI_CHAN; ++i) {
			if (chan == FUNC2(i)) {
				gate_sel = chan & 0x1f;
				break;
			}
		}
		if (i <= NI_M_MAX_RTSI_CHAN)
			break;
		for (i = 0; i <= NI_M_MAX_PFI_CHAN; ++i) {
			if (chan == FUNC1(i)) {
				gate_sel = chan & 0x1f;
				break;
			}
		}
		if (i <= NI_M_MAX_PFI_CHAN)
			break;
		return -EINVAL;
	}
	FUNC3(counter, gate_sel);
	return 0;
}