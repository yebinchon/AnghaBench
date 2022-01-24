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
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * idle_ws; int /*<<< orphan*/  active_map; int /*<<< orphan*/  lru_list; int /*<<< orphan*/  timer; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct list_head*) ; 
 int ZSTD_BTRFS_MAX_LEVEL ; 
 int /*<<< orphan*/  btrfs_zstd_compress ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ wsm ; 
 struct list_head* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  zstd_reclaim_timer_fn ; 

__attribute__((used)) static void FUNC10(void)
{
	struct list_head *ws;
	int i;

	FUNC9();

	wsm.ops = &btrfs_zstd_compress;
	FUNC6(&wsm.lock);
	FUNC2(&wsm.wait);
	FUNC7(&wsm.timer, zstd_reclaim_timer_fn, 0);

	FUNC0(&wsm.lru_list);
	for (i = 0; i < ZSTD_BTRFS_MAX_LEVEL; i++)
		FUNC0(&wsm.idle_ws[i]);

	ws = FUNC8(ZSTD_BTRFS_MAX_LEVEL);
	if (FUNC1(ws)) {
		FUNC4(
		"BTRFS: cannot preallocate zstd compression workspace\n");
	} else {
		FUNC5(ZSTD_BTRFS_MAX_LEVEL - 1, &wsm.active_map);
		FUNC3(ws, &wsm.idle_ws[ZSTD_BTRFS_MAX_LEVEL - 1]);
	}
}