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
struct perf_ctx {TYPE_1__* threads; int /*<<< orphan*/  twait; int /*<<< orphan*/  tsync; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; int /*<<< orphan*/  dma_wait; } ;

/* Variables and functions */
 int MAX_THREADS_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct perf_ctx *perf)
{
	int tidx;

	FUNC0(&perf->tsync, -1);
	FUNC2(&perf->twait);

	for (tidx = 0; tidx < MAX_THREADS_CNT; tidx++) {
		FUNC2(&perf->threads[tidx].dma_wait);
		FUNC1(&perf->threads[tidx].work);
	}
}