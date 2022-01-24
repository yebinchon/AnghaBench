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
struct extent_buffer {int /*<<< orphan*/  lock; scalar_t__ blocking_writers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 

int FUNC5(struct extent_buffer *eb)
{
	if (eb->blocking_writers)
		return 0;

	FUNC2(&eb->lock);
	if (eb->blocking_writers) {
		FUNC3(&eb->lock);
		return 0;
	}
	FUNC1(eb);
	FUNC0(eb);
	FUNC4(eb);
	return 1;
}