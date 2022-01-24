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
struct perf_ctx {TYPE_1__* ntb; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_ctx*) ; 

__attribute__((used)) static void FUNC3(void *ctx)
{
	struct perf_ctx *perf = ctx;

	FUNC0(&perf->ntb->dev, "Msg status bits %#llx\n",
		FUNC1(perf->ntb));

	/* Messages are only sent one-by-one */
	(void)FUNC2(perf);
}