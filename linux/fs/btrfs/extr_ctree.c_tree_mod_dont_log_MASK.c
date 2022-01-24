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
struct extent_buffer {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  tree_mod_log_lock; int /*<<< orphan*/  tree_mod_seq_list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct extent_buffer*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC5(struct btrfs_fs_info *fs_info,
				    struct extent_buffer *eb) {
	FUNC2();
	if (FUNC1(&(fs_info)->tree_mod_seq_list))
		return 1;
	if (eb && FUNC0(eb) == 0)
		return 1;

	FUNC3(&fs_info->tree_mod_log_lock);
	if (FUNC1(&(fs_info)->tree_mod_seq_list)) {
		FUNC4(&fs_info->tree_mod_log_lock);
		return 1;
	}

	return 0;
}