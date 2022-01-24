#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct work_struct {int dummy; } ;
struct perf_peer {TYPE_2__* perf; int /*<<< orphan*/  sts; int /*<<< orphan*/  inbuf_xlat; int /*<<< orphan*/  outbuf_size; } ;
struct TYPE_4__ {TYPE_1__* ntb; struct perf_peer* test_peer; int /*<<< orphan*/  busy_flag; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_CMD_CLEAR ; 
 int /*<<< orphan*/  PERF_CMD_RSIZE ; 
 int /*<<< orphan*/  PERF_CMD_RXLAT ; 
 int /*<<< orphan*/  PERF_CMD_SSIZE ; 
 int /*<<< orphan*/  PERF_CMD_SXLAT ; 
 int /*<<< orphan*/  PERF_STS_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_peer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_peer*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_peer*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_peer*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_peer*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct perf_peer* FUNC10 (struct work_struct*) ; 

__attribute__((used)) static void FUNC11(struct work_struct *work)
{
	struct perf_peer *peer = FUNC10(work);

	if (FUNC8(PERF_CMD_SSIZE, &peer->sts))
		FUNC2(peer, PERF_CMD_SSIZE, peer->outbuf_size);

	if (FUNC8(PERF_CMD_RSIZE, &peer->sts))
		FUNC5(peer);

	if (FUNC8(PERF_CMD_SXLAT, &peer->sts))
		FUNC2(peer, PERF_CMD_SXLAT, peer->inbuf_xlat);

	if (FUNC8(PERF_CMD_RXLAT, &peer->sts))
		FUNC6(peer);

	if (FUNC8(PERF_CMD_CLEAR, &peer->sts)) {
		FUNC0(PERF_STS_DONE, &peer->sts);
		if (FUNC9(0, &peer->perf->busy_flag) &&
		    peer == peer->perf->test_peer) {
			FUNC1(&peer->perf->ntb->dev,
				"Freeing while test on-fly\n");
			FUNC7(peer->perf);
		}
		FUNC4(peer);
		FUNC3(peer);
	}
}