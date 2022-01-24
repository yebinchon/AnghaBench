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
struct extent_buffer {int blocking_writers; int /*<<< orphan*/  lock; int /*<<< orphan*/  write_lock_wq; scalar_t__ lock_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct extent_buffer *eb)
{
	int blockers = eb->blocking_writers;

	FUNC0(blockers > 1);

	FUNC3(eb);
	FUNC6(eb);
	eb->lock_owner = 0;
	FUNC4(eb);

	if (blockers) {
		FUNC1(eb);
		eb->blocking_writers--;
		/*
		 * We need to order modifying blocking_writers above with
		 * actually waking up the sleepers to ensure they see the
		 * updated value of blocking_writers
		 */
		FUNC5(&eb->write_lock_wq);
	} else {
		FUNC2(eb);
		FUNC7(&eb->lock);
	}
}