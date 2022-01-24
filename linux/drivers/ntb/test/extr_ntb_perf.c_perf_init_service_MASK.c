#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct perf_ctx {scalar_t__ pcnt; TYPE_1__* ntb; int /*<<< orphan*/  cmd_recv; int /*<<< orphan*/  cmd_send; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ PERF_MSG_CNT ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  perf_msg_cmd_recv ; 
 int /*<<< orphan*/  perf_msg_cmd_send ; 
 int /*<<< orphan*/  perf_spad_cmd_recv ; 
 int /*<<< orphan*/  perf_spad_cmd_send ; 

__attribute__((used)) static int FUNC8(struct perf_ctx *perf)
{
	u64 mask;

	if (FUNC6(perf->ntb) < perf->pcnt + 1) {
		FUNC3(&perf->ntb->dev, "Not enough memory windows\n");
		return -EINVAL;
	}

	if (FUNC5(perf->ntb) >= PERF_MSG_CNT) {
		perf->cmd_send = perf_msg_cmd_send;
		perf->cmd_recv = perf_msg_cmd_recv;

		FUNC2(&perf->ntb->dev, "Message service initialized\n");

		return 0;
	}

	FUNC2(&perf->ntb->dev, "Message service unsupported\n");

	mask = FUNC0(perf->pcnt, 0);
	if (FUNC7(perf->ntb) >= FUNC1(perf->pcnt) &&
	    (FUNC4(perf->ntb) & mask) == mask) {
		perf->cmd_send = perf_spad_cmd_send;
		perf->cmd_recv = perf_spad_cmd_recv;

		FUNC2(&perf->ntb->dev, "Scratchpad service initialized\n");

		return 0;
	}

	FUNC2(&perf->ntb->dev, "Scratchpad service unsupported\n");

	FUNC3(&perf->ntb->dev, "Command services unsupported\n");

	return -EINVAL;
}