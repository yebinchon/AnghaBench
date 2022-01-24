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
struct TYPE_2__ {int level; } ;
struct tree_mod_elem {scalar_t__ op; TYPE_1__ old_root; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;

/* Variables and functions */
 scalar_t__ MOD_LOG_ROOT_REPLACE ; 
 struct tree_mod_elem* FUNC0 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC2 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 

int FUNC4(struct btrfs_root *root, u64 time_seq)
{
	struct tree_mod_elem *tm;
	int level;
	struct extent_buffer *eb_root = FUNC2(root);

	tm = FUNC0(eb_root, time_seq);
	if (tm && tm->op == MOD_LOG_ROOT_REPLACE) {
		level = tm->old_root.level;
	} else {
		level = FUNC1(eb_root);
	}
	FUNC3(eb_root);

	return level;
}