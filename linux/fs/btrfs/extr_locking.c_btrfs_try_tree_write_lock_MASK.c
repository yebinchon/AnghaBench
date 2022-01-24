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
struct extent_buffer {int /*<<< orphan*/  lock_owner; int /*<<< orphan*/  lock; int /*<<< orphan*/  blocking_readers; scalar_t__ blocking_writers; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct extent_buffer *eb)
{
	if (eb->blocking_writers || FUNC0(&eb->blocking_readers))
		return 0;

	FUNC4(&eb->lock);
	if (eb->blocking_writers || FUNC0(&eb->blocking_readers)) {
		FUNC5(&eb->lock);
		return 0;
	}
	FUNC2(eb);
	FUNC1(eb);
	eb->lock_owner = current->pid;
	FUNC3(eb);
	return 1;
}