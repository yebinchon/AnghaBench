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
struct perf_thread {int /*<<< orphan*/  work; int /*<<< orphan*/  duration; scalar_t__ copied; int /*<<< orphan*/  status; } ;
struct perf_peer {int /*<<< orphan*/  sts; struct perf_ctx* perf; } ;
struct perf_ctx {int tcnt; int /*<<< orphan*/  busy_flag; int /*<<< orphan*/  tsync; int /*<<< orphan*/  twait; struct perf_thread* threads; struct perf_peer* test_peer; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINTR ; 
 int /*<<< orphan*/  ENODATA ; 
 int ENOLINK ; 
 int ERESTARTSYS ; 
 int MAX_THREADS_CNT ; 
 int /*<<< orphan*/  PERF_STS_DONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_ctx*) ; 
 int /*<<< orphan*/  perf_wq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct perf_peer *peer)
{
	struct perf_ctx *perf = peer->perf;
	struct perf_thread *pthr;
	int tidx, ret;

	if (!FUNC7(PERF_STS_DONE, &peer->sts))
		return -ENOLINK;

	if (FUNC6(0, &perf->busy_flag))
		return -EBUSY;

	perf->test_peer = peer;
	FUNC1(&perf->tsync, perf->tcnt);

	for (tidx = 0; tidx < MAX_THREADS_CNT; tidx++) {
		pthr = &perf->threads[tidx];

		pthr->status = -ENODATA;
		pthr->copied = 0;
		pthr->duration = FUNC3(0, 0);
		if (tidx < perf->tcnt)
			(void)FUNC5(perf_wq, &pthr->work);
	}

	ret = FUNC8(perf->twait,
				       FUNC0(&perf->tsync) <= 0);
	if (ret == -ERESTARTSYS) {
		FUNC4(perf);
		ret = -EINTR;
	}

	FUNC2(0, &perf->busy_flag);

	return ret;
}