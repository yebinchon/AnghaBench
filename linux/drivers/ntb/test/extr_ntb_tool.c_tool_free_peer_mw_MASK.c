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
struct tool_mw {int pidx; int /*<<< orphan*/ * dbgfs_file; scalar_t__ size; scalar_t__ tr_base; int /*<<< orphan*/ * io_base; } ;
struct tool_ctx {int /*<<< orphan*/  ntb; struct tool_mw* outmws; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct tool_ctx *tc, int widx)
{
	struct tool_mw *outmw = &tc->outmws[widx];

	FUNC0(outmw->dbgfs_file);

	if (outmw->io_base != NULL) {
		FUNC1(tc->outmws[widx].io_base);
		FUNC2(tc->ntb, outmw->pidx, widx);
	}

	outmw->io_base = NULL;
	outmw->tr_base = 0;
	outmw->size = 0;
	outmw->pidx = -1;
	outmw->dbgfs_file = NULL;
}