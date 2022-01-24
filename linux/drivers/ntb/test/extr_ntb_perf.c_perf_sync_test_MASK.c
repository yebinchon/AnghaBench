#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct perf_thread {int /*<<< orphan*/  duration; int /*<<< orphan*/  copied; int /*<<< orphan*/  tidx; int /*<<< orphan*/  dma_sync; int /*<<< orphan*/  dma_wait; struct perf_ctx* perf; } ;
struct perf_ctx {TYPE_1__* ntb; int /*<<< orphan*/  tsync; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  use_dma ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct perf_thread *pthr)
{
	struct perf_ctx *perf = pthr->perf;

	if (!use_dma)
		goto no_dma_ret;

	FUNC6(pthr->dma_wait,
		   (FUNC0(&pthr->dma_sync) == 0 ||
		    FUNC0(&perf->tsync) < 0));

	if (FUNC0(&perf->tsync) < 0)
		return -EINTR;

no_dma_ret:
	pthr->duration = FUNC4(FUNC3(), pthr->duration);

	FUNC1(&perf->ntb->dev, "%d: copied %llu bytes\n",
		pthr->tidx, pthr->copied);

	FUNC1(&perf->ntb->dev, "%d: lasted %llu usecs\n",
		pthr->tidx, FUNC5(pthr->duration));

	FUNC1(&perf->ntb->dev, "%d: %llu MBytes/s\n", pthr->tidx,
		FUNC2(pthr->copied, FUNC5(pthr->duration)));

	return 0;
}