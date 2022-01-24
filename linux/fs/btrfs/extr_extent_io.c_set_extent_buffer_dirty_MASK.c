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
struct extent_buffer {int /*<<< orphan*/ * pages; int /*<<< orphan*/  bflags; int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXTENT_BUFFER_DIRTY ; 
 int /*<<< orphan*/  EXTENT_BUFFER_TREE_REF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 
 int FUNC5 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC9(struct extent_buffer *eb)
{
	int i;
	int num_pages;
	bool was_dirty;

	FUNC4(eb);

	was_dirty = FUNC7(EXTENT_BUFFER_DIRTY, &eb->bflags);

	num_pages = FUNC5(eb);
	FUNC2(FUNC3(&eb->refs) == 0);
	FUNC2(!FUNC8(EXTENT_BUFFER_TREE_REF, &eb->bflags));

	if (!was_dirty)
		for (i = 0; i < num_pages; i++)
			FUNC6(eb->pages[i]);

#ifdef CONFIG_BTRFS_DEBUG
	for (i = 0; i < num_pages; i++)
		ASSERT(PageDirty(eb->pages[i]));
#endif

	return was_dirty;
}