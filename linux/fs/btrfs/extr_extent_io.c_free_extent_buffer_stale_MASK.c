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
struct extent_buffer {int /*<<< orphan*/  refs; int /*<<< orphan*/  bflags; int /*<<< orphan*/  refs_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENT_BUFFER_STALE ; 
 int /*<<< orphan*/  EXTENT_BUFFER_TREE_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct extent_buffer *eb)
{
	if (!eb)
		return;

	FUNC5(&eb->refs_lock);
	FUNC4(EXTENT_BUFFER_STALE, &eb->bflags);

	if (FUNC1(&eb->refs) == 2 && !FUNC2(eb) &&
	    FUNC6(EXTENT_BUFFER_TREE_REF, &eb->bflags))
		FUNC0(&eb->refs);
	FUNC3(eb);
}