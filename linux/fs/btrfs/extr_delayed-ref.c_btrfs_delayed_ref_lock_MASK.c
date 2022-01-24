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
struct btrfs_delayed_ref_root {int /*<<< orphan*/  lock; } ;
struct btrfs_delayed_ref_head {int /*<<< orphan*/  mutex; int /*<<< orphan*/  href_node; int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_delayed_ref_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct btrfs_delayed_ref_root *delayed_refs,
			   struct btrfs_delayed_ref_head *head)
{
	FUNC2(&delayed_refs->lock);
	if (FUNC4(&head->mutex))
		return 0;

	FUNC6(&head->refs);
	FUNC8(&delayed_refs->lock);

	FUNC3(&head->mutex);
	FUNC7(&delayed_refs->lock);
	if (FUNC0(&head->href_node)) {
		FUNC5(&head->mutex);
		FUNC1(head);
		return -EAGAIN;
	}
	FUNC1(head);
	return 0;
}