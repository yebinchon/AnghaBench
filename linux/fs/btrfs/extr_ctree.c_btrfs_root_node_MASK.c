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
struct extent_buffer {int /*<<< orphan*/  refs; } ;
struct btrfs_root {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct extent_buffer* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

struct extent_buffer *FUNC5(struct btrfs_root *root)
{
	struct extent_buffer *eb;

	while (1) {
		FUNC2();
		eb = FUNC1(root->node);

		/*
		 * RCU really hurts here, we could free up the root node because
		 * it was COWed but we may not get the new root node yet so do
		 * the inc_not_zero dance and if it doesn't work then
		 * synchronize_rcu and try again.
		 */
		if (FUNC0(&eb->refs)) {
			FUNC3();
			break;
		}
		FUNC3();
		FUNC4();
	}
	return eb;
}