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
struct perf_peer {int /*<<< orphan*/  pidx; struct perf_ctx* perf; } ;
struct perf_ctx {TYPE_1__* ntb; } ;
typedef  enum perf_cmd { ____Placeholder_perf_cmd } perf_cmd ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOLINK ; 
 int MSG_TRIES ; 
 int /*<<< orphan*/  MSG_UDELAY_HIGH ; 
 int /*<<< orphan*/  MSG_UDELAY_LOW ; 
 int /*<<< orphan*/  PERF_MSG_CMD ; 
 int /*<<< orphan*/  PERF_MSG_HDATA ; 
 int /*<<< orphan*/  PERF_MSG_LDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_peer*) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct perf_peer *peer, enum perf_cmd cmd,
			     u64 data)
{
	struct perf_ctx *perf = peer->perf;
	int try, ret;
	u64 outbits;

	FUNC0(&perf->ntb->dev, "CMD send: %d 0x%llx\n", cmd, data);

	/*
	 * Perform predefined number of attempts before give up. Message
	 * registers are free of race-condition problem when accessed
	 * from different ports, so we don't need splitting registers
	 * by global device index. We also won't have local locking,
	 * since the method is used from service work only.
	 */
	outbits = FUNC3(perf->ntb);
	for (try = 0; try < MSG_TRIES; try++) {
		if (!FUNC6(peer))
			return -ENOLINK;

		ret = FUNC2(perf->ntb, outbits);
		if (ret)
			return ret;

		FUNC5(perf->ntb, peer->pidx, PERF_MSG_LDATA,
				   FUNC1(data));

		if (FUNC4(perf->ntb) & outbits) {
			FUNC8(MSG_UDELAY_LOW, MSG_UDELAY_HIGH);
			continue;
		}

		FUNC5(perf->ntb, peer->pidx, PERF_MSG_HDATA,
				   FUNC7(data));

		/* This call shall trigger peer message event */
		FUNC5(perf->ntb, peer->pidx, PERF_MSG_CMD, cmd);

		break;
	}

	return try < MSG_TRIES ? 0 : -EAGAIN;
}