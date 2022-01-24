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
struct extent_buffer {scalar_t__ lock_owner; scalar_t__ blocking_writers; int /*<<< orphan*/  lock; int /*<<< orphan*/  blocking_readers; int /*<<< orphan*/  write_lock_wq; int /*<<< orphan*/  read_lock_wq; } ;
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct extent_buffer *eb)
{
	u64 start_ns = 0;

	if (FUNC6())
		start_ns = FUNC4();

	FUNC0(eb->lock_owner == current->pid);
again:
	FUNC7(eb->read_lock_wq, FUNC1(&eb->blocking_readers) == 0);
	FUNC7(eb->write_lock_wq, eb->blocking_writers == 0);
	FUNC8(&eb->lock);
	if (FUNC1(&eb->blocking_readers) || eb->blocking_writers) {
		FUNC9(&eb->lock);
		goto again;
	}
	FUNC2(eb);
	FUNC3(eb);
	eb->lock_owner = current->pid;
	FUNC5(eb, start_ns);
}