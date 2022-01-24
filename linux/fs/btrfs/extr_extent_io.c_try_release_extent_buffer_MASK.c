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
struct page {TYPE_1__* mapping; scalar_t__ private; } ;
struct extent_buffer {int /*<<< orphan*/  refs_lock; int /*<<< orphan*/  bflags; int /*<<< orphan*/  refs; } ;
struct TYPE_2__ {int /*<<< orphan*/  private_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EXTENT_BUFFER_TREE_REF ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct extent_buffer*) ; 
 int FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct page *page)
{
	struct extent_buffer *eb;

	/*
	 * We need to make sure nobody is attaching this page to an eb right
	 * now.
	 */
	FUNC5(&page->mapping->private_lock);
	if (!FUNC1(page)) {
		FUNC6(&page->mapping->private_lock);
		return 1;
	}

	eb = (struct extent_buffer *)page->private;
	FUNC0(!eb);

	/*
	 * This is a little awful but should be ok, we need to make sure that
	 * the eb doesn't disappear out from under us while we're looking at
	 * this page.
	 */
	FUNC5(&eb->refs_lock);
	if (FUNC2(&eb->refs) != 1 || FUNC3(eb)) {
		FUNC6(&eb->refs_lock);
		FUNC6(&page->mapping->private_lock);
		return 0;
	}
	FUNC6(&page->mapping->private_lock);

	/*
	 * If tree ref isn't set then we know the ref on this eb is a real ref,
	 * so just return, this page will likely be freed soon anyway.
	 */
	if (!FUNC7(EXTENT_BUFFER_TREE_REF, &eb->bflags)) {
		FUNC6(&eb->refs_lock);
		return 0;
	}

	return FUNC4(eb);
}