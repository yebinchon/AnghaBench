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
struct perf_thread {int /*<<< orphan*/  src; int /*<<< orphan*/  dma_chan; struct perf_ctx* perf; } ;
struct perf_ctx {int /*<<< orphan*/  twait; int /*<<< orphan*/  tsync; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  use_dma ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct perf_thread *pthr)
{
	struct perf_ctx *perf = pthr->perf;

	if (!use_dma)
		goto no_dma_notify;

	/*
	 * If test finished without errors, termination isn't needed.
	 * We call it anyway just to be sure of the transfers completion.
	 */
	(void)FUNC2(pthr->dma_chan);

	FUNC1(pthr->dma_chan);

no_dma_notify:
	FUNC0(&perf->tsync);
	FUNC4(&perf->twait);
	FUNC3(pthr->src);
}