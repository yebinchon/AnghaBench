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
struct csio_sge {int csio_fl_align; int /*<<< orphan*/ * timer_val; int /*<<< orphan*/ * counter_val; int /*<<< orphan*/  sge_control; } ;
struct csio_wrm {struct csio_sge sge; } ;
struct csio_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSIO_SGE_DBFIFO_INT_THRESH ; 
 int /*<<< orphan*/  CSIO_SGE_FLBUF_SIZE1 ; 
 int CSIO_SGE_FLBUF_SIZE2 ; 
 int CSIO_SGE_FLBUF_SIZE3 ; 
 int /*<<< orphan*/  CSIO_SGE_FLBUF_SIZE4 ; 
 int /*<<< orphan*/  CSIO_SGE_FLBUF_SIZE5 ; 
 int /*<<< orphan*/  CSIO_SGE_FLBUF_SIZE6 ; 
 int /*<<< orphan*/  CSIO_SGE_FLBUF_SIZE7 ; 
 int /*<<< orphan*/  CSIO_SGE_FLBUF_SIZE8 ; 
 int CSIO_SGE_FL_SIZE_REGS ; 
 int /*<<< orphan*/  CSIO_SGE_INT_CNT_VAL_0 ; 
 int /*<<< orphan*/  CSIO_SGE_INT_CNT_VAL_1 ; 
 int /*<<< orphan*/  CSIO_SGE_INT_CNT_VAL_2 ; 
 int /*<<< orphan*/  CSIO_SGE_INT_CNT_VAL_3 ; 
 int /*<<< orphan*/  CSIO_SGE_TIMER_VAL_0 ; 
 int /*<<< orphan*/  CSIO_SGE_TIMER_VAL_1 ; 
 int /*<<< orphan*/  CSIO_SGE_TIMER_VAL_2 ; 
 int /*<<< orphan*/  CSIO_SGE_TIMER_VAL_3 ; 
 int /*<<< orphan*/  CSIO_SGE_TIMER_VAL_4 ; 
 int /*<<< orphan*/  CSIO_SGE_TIMER_VAL_5 ; 
 int /*<<< orphan*/  ENABLE_DROP_F ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LP_INT_THRESH_T5_M ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RXPKTCPLMODE_F ; 
 int /*<<< orphan*/  SGE_CONTROL_A ; 
 int /*<<< orphan*/  SGE_DBFIFO_STATUS2_A ; 
 int /*<<< orphan*/  SGE_DBFIFO_STATUS_A ; 
 int /*<<< orphan*/  SGE_DOORBELL_CONTROL_A ; 
 int /*<<< orphan*/  SGE_FL_BUFFER_SIZE2_A ; 
 int /*<<< orphan*/  SGE_FL_BUFFER_SIZE3_A ; 
 int /*<<< orphan*/  SGE_INGRESS_RX_THRESHOLD_A ; 
 int /*<<< orphan*/  SGE_TIMER_VALUE_0_AND_1_A ; 
 int /*<<< orphan*/  SGE_TIMER_VALUE_2_AND_3_A ; 
 int /*<<< orphan*/  SGE_TIMER_VALUE_4_AND_5_A ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct csio_hw*,struct csio_sge*,int) ; 
 struct csio_wrm* FUNC14 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC15 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC16 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct csio_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct csio_hw*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC20(struct csio_hw *hw)
{
	struct csio_wrm *wrm = FUNC14(hw);
	struct csio_sge *sge = &wrm->sge;
	int i;

	/*
	 * Set up our basic SGE mode to deliver CPL messages to our Ingress
	 * Queue and Packet Date to the Free List.
	 */
	FUNC17(hw, SGE_CONTROL_A, RXPKTCPLMODE_F, RXPKTCPLMODE_F);

	sge->sge_control = FUNC16(hw, SGE_CONTROL_A);

	/* sge->csio_fl_align is set up by csio_wr_fixup_host_params(). */

	/*
	 * Set up to drop DOORBELL writes when the DOORBELL FIFO overflows
	 * and generate an interrupt when this occurs so we can recover.
	 */
	FUNC17(hw, SGE_DBFIFO_STATUS_A,
			   FUNC2(LP_INT_THRESH_T5_M),
			   FUNC2(CSIO_SGE_DBFIFO_INT_THRESH));
	FUNC17(hw, SGE_DBFIFO_STATUS2_A,
			   FUNC1(LP_INT_THRESH_T5_M),
			   FUNC1(CSIO_SGE_DBFIFO_INT_THRESH));

	FUNC17(hw, SGE_DOORBELL_CONTROL_A, ENABLE_DROP_F,
			   ENABLE_DROP_F);

	/* SGE_FL_BUFFER_SIZE0 is set up by csio_wr_fixup_host_params(). */

	FUNC0(hw, 1, CSIO_SGE_FLBUF_SIZE1);
	FUNC19(hw, (CSIO_SGE_FLBUF_SIZE2 + sge->csio_fl_align - 1)
		      & ~(sge->csio_fl_align - 1), SGE_FL_BUFFER_SIZE2_A);
	FUNC19(hw, (CSIO_SGE_FLBUF_SIZE3 + sge->csio_fl_align - 1)
		      & ~(sge->csio_fl_align - 1), SGE_FL_BUFFER_SIZE3_A);
	FUNC0(hw, 4, CSIO_SGE_FLBUF_SIZE4);
	FUNC0(hw, 5, CSIO_SGE_FLBUF_SIZE5);
	FUNC0(hw, 6, CSIO_SGE_FLBUF_SIZE6);
	FUNC0(hw, 7, CSIO_SGE_FLBUF_SIZE7);
	FUNC0(hw, 8, CSIO_SGE_FLBUF_SIZE8);

	for (i = 0; i < CSIO_SGE_FL_SIZE_REGS; i++)
		FUNC13(hw, sge, i);

	/* Initialize interrupt coalescing attributes */
	sge->timer_val[0] = CSIO_SGE_TIMER_VAL_0;
	sge->timer_val[1] = CSIO_SGE_TIMER_VAL_1;
	sge->timer_val[2] = CSIO_SGE_TIMER_VAL_2;
	sge->timer_val[3] = CSIO_SGE_TIMER_VAL_3;
	sge->timer_val[4] = CSIO_SGE_TIMER_VAL_4;
	sge->timer_val[5] = CSIO_SGE_TIMER_VAL_5;

	sge->counter_val[0] = CSIO_SGE_INT_CNT_VAL_0;
	sge->counter_val[1] = CSIO_SGE_INT_CNT_VAL_1;
	sge->counter_val[2] = CSIO_SGE_INT_CNT_VAL_2;
	sge->counter_val[3] = CSIO_SGE_INT_CNT_VAL_3;

	FUNC19(hw, FUNC3(sge->counter_val[0]) |
		      FUNC4(sge->counter_val[1]) |
		      FUNC5(sge->counter_val[2]) |
		      FUNC6(sge->counter_val[3]),
		      SGE_INGRESS_RX_THRESHOLD_A);

	FUNC19(hw,
		   FUNC7(FUNC18(hw, sge->timer_val[0])) |
		   FUNC8(FUNC18(hw, sge->timer_val[1])),
		   SGE_TIMER_VALUE_0_AND_1_A);

	FUNC19(hw,
		   FUNC9(FUNC18(hw, sge->timer_val[2])) |
		   FUNC10(FUNC18(hw, sge->timer_val[3])),
		   SGE_TIMER_VALUE_2_AND_3_A);

	FUNC19(hw,
		   FUNC11(FUNC18(hw, sge->timer_val[4])) |
		   FUNC12(FUNC18(hw, sge->timer_val[5])),
		   SGE_TIMER_VALUE_4_AND_5_A);

	FUNC15(hw);
}