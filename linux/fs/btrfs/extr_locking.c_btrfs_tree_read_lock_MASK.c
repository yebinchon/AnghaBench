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
struct extent_buffer {scalar_t__ blocking_writers; scalar_t__ lock_owner; int lock_nested; int /*<<< orphan*/  write_lock_wq; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

void FUNC9(struct extent_buffer *eb)
{
	u64 start_ns = 0;

	if (FUNC7())
		start_ns = FUNC3();
again:
	FUNC4(&eb->lock);
	FUNC0(eb->blocking_writers == 0 &&
	       current->pid == eb->lock_owner);
	if (eb->blocking_writers && current->pid == eb->lock_owner) {
		/*
		 * This extent is already write-locked by our thread. We allow
		 * an additional read lock to be added because it's for the same
		 * thread. btrfs_find_all_roots() depends on this as it may be
		 * called on a partly (write-)locked tree.
		 */
		FUNC0(eb->lock_nested);
		eb->lock_nested = true;
		FUNC5(&eb->lock);
		FUNC6(eb, start_ns);
		return;
	}
	if (eb->blocking_writers) {
		FUNC5(&eb->lock);
		FUNC8(eb->write_lock_wq,
			   eb->blocking_writers == 0);
		goto again;
	}
	FUNC2(eb);
	FUNC1(eb);
	FUNC6(eb, start_ns);
}