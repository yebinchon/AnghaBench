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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct perf_peer {int /*<<< orphan*/  gidx; int /*<<< orphan*/  pidx; struct perf_ctx* perf; } ;
struct perf_ctx {TYPE_1__* ntb; int /*<<< orphan*/  gidx; } ;
typedef  enum perf_cmd { ____Placeholder_perf_cmd } perf_cmd ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOLINK ; 
 int MSG_TRIES ; 
 int /*<<< orphan*/  MSG_UDELAY_HIGH ; 
 int /*<<< orphan*/  MSG_UDELAY_LOW ; 
 scalar_t__ PERF_CMD_INVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct perf_peer*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct perf_peer *peer, enum perf_cmd cmd,
			      u64 data)
{
	struct perf_ctx *perf = peer->perf;
	int try;
	u32 sts;

	FUNC4(&perf->ntb->dev, "CMD send: %d 0x%llx\n", cmd, data);

	/*
	 * Perform predefined number of attempts before give up.
	 * We are sending the data to the port specific scratchpad, so
	 * to prevent a multi-port access race-condition. Additionally
	 * there is no need in local locking since only thread-safe
	 * service work is using this method.
	 */
	for (try = 0; try < MSG_TRIES; try++) {
		if (!FUNC9(peer))
			return -ENOLINK;

		sts = FUNC7(perf->ntb, peer->pidx,
					 FUNC0(perf->gidx));
		if (sts != PERF_CMD_INVAL) {
			FUNC11(MSG_UDELAY_LOW, MSG_UDELAY_HIGH);
			continue;
		}

		FUNC8(perf->ntb, peer->pidx,
				    FUNC2(perf->gidx),
				    FUNC5(data));
		FUNC8(perf->ntb, peer->pidx,
				    FUNC1(perf->gidx),
				    FUNC10(data));
		FUNC8(perf->ntb, peer->pidx,
				    FUNC0(perf->gidx),
				    cmd);
		FUNC6(perf->ntb, FUNC3(peer->gidx));

		FUNC4(&perf->ntb->dev, "DB ring peer %#llx\n",
			FUNC3(peer->gidx));

		break;
	}

	return try < MSG_TRIES ? 0 : -EAGAIN;
}