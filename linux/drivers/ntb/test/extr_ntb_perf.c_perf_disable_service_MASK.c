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
typedef  int /*<<< orphan*/  u64 ;
struct perf_peer {int /*<<< orphan*/  gidx; int /*<<< orphan*/  service; } ;
struct perf_ctx {scalar_t__ cmd_send; int pcnt; int /*<<< orphan*/  ntb; int /*<<< orphan*/  gidx; struct perf_peer* peers; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_CMD_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct perf_peer*,int /*<<< orphan*/ ) ; 
 scalar_t__ perf_msg_cmd_send ; 

__attribute__((used)) static void FUNC11(struct perf_ctx *perf)
{
	int pidx;

	if (perf->cmd_send == perf_msg_cmd_send) {
		u64 inbits;

		inbits = FUNC7(perf->ntb);
		(void)FUNC8(perf->ntb, inbits);
	} else {
		(void)FUNC5(perf->ntb, FUNC1(perf->gidx));
	}

	FUNC3(perf->ntb);

	for (pidx = 0; pidx < perf->pcnt; pidx++)
		FUNC10(&perf->peers[pidx], PERF_CMD_CLEAR);

	for (pidx = 0; pidx < perf->pcnt; pidx++)
		FUNC2(&perf->peers[pidx].service);

	for (pidx = 0; pidx < perf->pcnt; pidx++) {
		struct perf_peer *peer = &perf->peers[pidx];

		FUNC9(perf->ntb, FUNC0(peer->gidx), 0);
	}

	FUNC4(perf->ntb, FUNC1(perf->gidx));

	FUNC6(perf->ntb);
}