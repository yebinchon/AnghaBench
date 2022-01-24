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
struct workspace {int req_level; int level; int /*<<< orphan*/  list; int /*<<< orphan*/  lru_list; scalar_t__ last_used; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; int /*<<< orphan*/ * idle_ws; int /*<<< orphan*/  active_map; int /*<<< orphan*/  timer; int /*<<< orphan*/  lru_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ZSTD_BTRFS_MAX_LEVEL ; 
 scalar_t__ ZSTD_BTRFS_RECLAIM_JIFFIES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct workspace* FUNC4 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__ wsm ; 

__attribute__((used)) static void FUNC10(struct list_head *ws)
{
	struct workspace *workspace = FUNC4(ws);

	FUNC7(&wsm.lock);

	/* A node is only taken off the lru if we are the corresponding level */
	if (workspace->req_level == workspace->level) {
		/* Hide a max level workspace from reclaim */
		if (FUNC3(&wsm.idle_ws[ZSTD_BTRFS_MAX_LEVEL - 1])) {
			FUNC0(&workspace->lru_list);
		} else {
			workspace->last_used = jiffies;
			FUNC2(&workspace->lru_list, &wsm.lru_list);
			if (!FUNC9(&wsm.timer))
				FUNC5(&wsm.timer,
					  jiffies + ZSTD_BTRFS_RECLAIM_JIFFIES);
		}
	}

	FUNC6(workspace->level - 1, &wsm.active_map);
	FUNC2(&workspace->list, &wsm.idle_ws[workspace->level - 1]);
	workspace->req_level = 0;

	FUNC8(&wsm.lock);

	if (workspace->level == ZSTD_BTRFS_MAX_LEVEL)
		FUNC1(&wsm.wait);
}