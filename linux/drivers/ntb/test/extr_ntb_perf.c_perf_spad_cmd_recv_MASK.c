#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct perf_peer {int /*<<< orphan*/  gidx; } ;
struct perf_ctx {int pcnt; TYPE_1__* ntb; struct perf_peer* peers; int /*<<< orphan*/  gidx; } ;
typedef  enum perf_cmd { ____Placeholder_perf_cmd } perf_cmd ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODATA ; 
 scalar_t__ PERF_CMD_INVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_peer*) ; 

__attribute__((used)) static int FUNC9(struct perf_ctx *perf, int *pidx,
			      enum perf_cmd *cmd, u64 *data)
{
	struct perf_peer *peer;
	u32 val;

	FUNC5(perf->ntb, FUNC3(perf->gidx));

	/*
	 * We start scanning all over, since cleared DB may have been set
	 * by any peer. Yes, it makes peer with smaller index being
	 * serviced with greater priority, but it's convenient for spad
	 * and message code unification and simplicity.
	 */
	for (*pidx = 0; *pidx < perf->pcnt; (*pidx)++) {
		peer = &perf->peers[*pidx];

		if (!FUNC8(peer))
			continue;

		val = FUNC6(perf->ntb, FUNC0(peer->gidx));
		if (val == PERF_CMD_INVAL)
			continue;

		*cmd = val;

		val = FUNC6(perf->ntb, FUNC2(peer->gidx));
		*data = val;

		val = FUNC6(perf->ntb, FUNC1(peer->gidx));
		*data |= (u64)val << 32;

		/* Next command can be retrieved from now */
		FUNC7(perf->ntb, FUNC0(peer->gidx),
			       PERF_CMD_INVAL);

		FUNC4(&perf->ntb->dev, "CMD recv: %d 0x%llx\n", *cmd, *data);

		return 0;
	}

	return -ENODATA;
}