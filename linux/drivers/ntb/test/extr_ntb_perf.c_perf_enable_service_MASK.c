#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct perf_ctx {scalar_t__ cmd_send; TYPE_1__* ntb; int /*<<< orphan*/  gidx; } ;
struct TYPE_14__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NTB_SPEED_AUTO ; 
 int /*<<< orphan*/  NTB_WIDTH_AUTO ; 
 int /*<<< orphan*/  PERF_CMD_INVAL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*,int) ; 
 int FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int FUNC14 (TYPE_1__*,struct perf_ctx*,int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ perf_msg_cmd_send ; 
 int /*<<< orphan*/  perf_ops ; 

__attribute__((used)) static int FUNC17(struct perf_ctx *perf)
{
	u64 mask, incmd_bit;
	int ret, sidx, scnt;

	mask = FUNC7(perf->ntb);
	(void)FUNC6(perf->ntb, mask);

	ret = FUNC14(perf->ntb, perf, &perf_ops);
	if (ret)
		return ret;

	if (perf->cmd_send == perf_msg_cmd_send) {
		u64 inbits, outbits;

		inbits = FUNC11(perf->ntb);
		outbits = FUNC12(perf->ntb);
		(void)FUNC13(perf->ntb, inbits | outbits);

		incmd_bit = FUNC0(FUNC2(inbits));
		ret = FUNC10(perf->ntb, incmd_bit);

		FUNC3(&perf->ntb->dev, "MSG sts unmasked %#llx\n", incmd_bit);
	} else {
		scnt = FUNC15(perf->ntb);
		for (sidx = 0; sidx < scnt; sidx++)
			FUNC16(perf->ntb, sidx, PERF_CMD_INVAL);
		incmd_bit = FUNC1(perf->gidx);
		ret = FUNC5(perf->ntb, incmd_bit);

		FUNC3(&perf->ntb->dev, "DB bits unmasked %#llx\n", incmd_bit);
	}
	if (ret) {
		FUNC4(perf->ntb);
		return ret;
	}

	FUNC8(perf->ntb, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);
	/* Might be not necessary */
	FUNC9(perf->ntb);

	return 0;
}