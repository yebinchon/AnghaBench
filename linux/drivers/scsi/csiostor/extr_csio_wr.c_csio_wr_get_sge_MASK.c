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
typedef  int uint32_t ;
typedef  void* uint16_t ;
typedef  void* u32 ;
struct csio_sge {int csio_fl_align; int /*<<< orphan*/ * counter_val; void** timer_val; void* sge_control; } ;
struct csio_wrm {struct csio_sge sge; } ;
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int CSIO_SGE_FL_SIZE_REGS ; 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  SGE_CONTROL_A ; 
 int /*<<< orphan*/  SGE_INGRESS_RX_THRESHOLD_A ; 
 int /*<<< orphan*/  SGE_TIMER_VALUE_0_AND_1_A ; 
 int /*<<< orphan*/  SGE_TIMER_VALUE_2_AND_3_A ; 
 int /*<<< orphan*/  SGE_TIMER_VALUE_4_AND_5_A ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
#define  X_INGPCIEBOUNDARY_1024B 135 
#define  X_INGPCIEBOUNDARY_128B 134 
#define  X_INGPCIEBOUNDARY_2048B 133 
#define  X_INGPCIEBOUNDARY_256B 132 
#define  X_INGPCIEBOUNDARY_32B 131 
#define  X_INGPCIEBOUNDARY_4096B 130 
#define  X_INGPCIEBOUNDARY_512B 129 
#define  X_INGPCIEBOUNDARY_64B 128 
 scalar_t__ FUNC11 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct csio_hw*,struct csio_sge*,int) ; 
 struct csio_wrm* FUNC13 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC14 (struct csio_hw*) ; 
 void* FUNC15 (struct csio_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(struct csio_hw *hw)
{
	struct csio_wrm *wrm = FUNC13(hw);
	struct csio_sge *sge = &wrm->sge;
	uint32_t ingpad;
	int i;
	u32 timer_value_0_and_1, timer_value_2_and_3, timer_value_4_and_5;
	u32 ingress_rx_threshold;

	sge->sge_control = FUNC15(hw, SGE_CONTROL_A);

	ingpad = FUNC0(sge->sge_control);

	switch (ingpad) {
	case X_INGPCIEBOUNDARY_32B:
		sge->csio_fl_align = 32; break;
	case X_INGPCIEBOUNDARY_64B:
		sge->csio_fl_align = 64; break;
	case X_INGPCIEBOUNDARY_128B:
		sge->csio_fl_align = 128; break;
	case X_INGPCIEBOUNDARY_256B:
		sge->csio_fl_align = 256; break;
	case X_INGPCIEBOUNDARY_512B:
		sge->csio_fl_align = 512; break;
	case X_INGPCIEBOUNDARY_1024B:
		sge->csio_fl_align = 1024; break;
	case X_INGPCIEBOUNDARY_2048B:
		sge->csio_fl_align = 2048; break;
	case X_INGPCIEBOUNDARY_4096B:
		sge->csio_fl_align = 4096; break;
	}

	for (i = 0; i < CSIO_SGE_FL_SIZE_REGS; i++)
		FUNC12(hw, sge, i);

	timer_value_0_and_1 = FUNC15(hw, SGE_TIMER_VALUE_0_AND_1_A);
	timer_value_2_and_3 = FUNC15(hw, SGE_TIMER_VALUE_2_AND_3_A);
	timer_value_4_and_5 = FUNC15(hw, SGE_TIMER_VALUE_4_AND_5_A);

	sge->timer_val[0] = (uint16_t)FUNC11(hw,
					FUNC5(timer_value_0_and_1));
	sge->timer_val[1] = (uint16_t)FUNC11(hw,
					FUNC6(timer_value_0_and_1));
	sge->timer_val[2] = (uint16_t)FUNC11(hw,
					FUNC7(timer_value_2_and_3));
	sge->timer_val[3] = (uint16_t)FUNC11(hw,
					FUNC8(timer_value_2_and_3));
	sge->timer_val[4] = (uint16_t)FUNC11(hw,
					FUNC9(timer_value_4_and_5));
	sge->timer_val[5] = (uint16_t)FUNC11(hw,
					FUNC10(timer_value_4_and_5));

	ingress_rx_threshold = FUNC15(hw, SGE_INGRESS_RX_THRESHOLD_A);
	sge->counter_val[0] = FUNC1(ingress_rx_threshold);
	sge->counter_val[1] = FUNC2(ingress_rx_threshold);
	sge->counter_val[2] = FUNC3(ingress_rx_threshold);
	sge->counter_val[3] = FUNC4(ingress_rx_threshold);

	FUNC14(hw);
}