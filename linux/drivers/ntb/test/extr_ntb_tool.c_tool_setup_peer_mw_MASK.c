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
typedef  int /*<<< orphan*/  u64 ;
struct tool_mw {size_t size; int pidx; int /*<<< orphan*/  dbgfs_file; int /*<<< orphan*/  tr_base; int /*<<< orphan*/ * io_base; } ;
struct tool_ctx {int /*<<< orphan*/  ntb; TYPE_1__* peers; struct tool_mw* outmws; } ;
typedef  int /*<<< orphan*/  resource_size_t ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  dbgfs_dir; } ;

/* Variables and functions */
 int EFAULT ; 
 int TOOL_BUF_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,struct tool_mw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  tool_peer_mw_fops ; 

__attribute__((used)) static int FUNC6(struct tool_ctx *tc, int pidx, int widx,
			      u64 req_addr, size_t req_size)
{
	struct tool_mw *outmw = &tc->outmws[widx];
	resource_size_t map_size;
	phys_addr_t map_base;
	char buf[TOOL_BUF_LEN];
	int ret;

	if (outmw->io_base != NULL)
		return 0;

	ret = FUNC3(tc->ntb, widx, &map_base, &map_size);
	if (ret)
		return ret;

	ret = FUNC4(tc->ntb, pidx, widx, req_addr, req_size);
	if (ret)
		return ret;

	outmw->io_base = FUNC1(map_base, map_size);
	if (outmw->io_base == NULL) {
		ret = -EFAULT;
		goto err_clear_trans;
	}

	outmw->tr_base = req_addr;
	outmw->size = req_size;
	outmw->pidx = pidx;

	FUNC5(buf, sizeof(buf), "peer_mw%d", widx);
	outmw->dbgfs_file = FUNC0(buf, 0600,
					       tc->peers[pidx].dbgfs_dir, outmw,
					       &tool_peer_mw_fops);

	return 0;

err_clear_trans:
	FUNC2(tc->ntb, pidx, widx);

	return ret;
}