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
struct workspace_manager {int free_ws; int /*<<< orphan*/  idle_ws; int /*<<< orphan*/  total_ws; struct btrfs_compress_op const* ops; int /*<<< orphan*/  ws_wait; int /*<<< orphan*/  ws_lock; } ;
struct list_head {int dummy; } ;
struct btrfs_compress_op {struct list_head* (* alloc_workspace ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct list_head* FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct workspace_manager *wsm,
				  const struct btrfs_compress_op *ops)
{
	struct list_head *workspace;

	wsm->ops = ops;

	FUNC0(&wsm->idle_ws);
	FUNC6(&wsm->ws_lock);
	FUNC2(&wsm->total_ws, 0);
	FUNC3(&wsm->ws_wait);

	/*
	 * Preallocate one workspace for each compression type so we can
	 * guarantee forward progress in the worst case
	 */
	workspace = wsm->ops->alloc_workspace(0);
	if (FUNC1(workspace)) {
		FUNC5(
	"BTRFS: cannot preallocate compression workspace, will try later\n");
	} else {
		FUNC2(&wsm->total_ws, 1);
		wsm->free_ws = 1;
		FUNC4(workspace, &wsm->idle_ws);
	}
}