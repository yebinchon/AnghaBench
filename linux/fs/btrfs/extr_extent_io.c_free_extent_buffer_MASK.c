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
 int /*<<< orphan*/  EXTENT_BUFFER_UNMAPPED ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct extent_buffer *eb)
{
	int refs;
	int old;
	if (!eb)
		return;

	while (1) {
		refs = FUNC2(&eb->refs);
		if ((!FUNC7(EXTENT_BUFFER_UNMAPPED, &eb->bflags) && refs <= 3)
		    || (FUNC7(EXTENT_BUFFER_UNMAPPED, &eb->bflags) &&
			refs == 1))
			break;
		old = FUNC0(&eb->refs, refs, refs - 1);
		if (old == refs)
			return;
	}

	FUNC5(&eb->refs_lock);
	if (FUNC2(&eb->refs) == 2 &&
	    FUNC7(EXTENT_BUFFER_STALE, &eb->bflags) &&
	    !FUNC3(eb) &&
	    FUNC6(EXTENT_BUFFER_TREE_REF, &eb->bflags))
		FUNC1(&eb->refs);

	/*
	 * I know this is terrible, but it's temporary until we stop tracking
	 * the uptodate bits and such for the extent buffers.
	 */
	FUNC4(eb);
}