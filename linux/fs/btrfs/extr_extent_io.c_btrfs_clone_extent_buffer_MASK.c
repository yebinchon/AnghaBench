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
struct page {int dummy; } ;
struct extent_buffer {int /*<<< orphan*/  bflags; struct page** pages; int /*<<< orphan*/  len; int /*<<< orphan*/  start; int /*<<< orphan*/  fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENT_BUFFER_UNMAPPED ; 
 int /*<<< orphan*/  EXTENT_BUFFER_UPTODATE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct extent_buffer* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*,struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct extent_buffer *FUNC11(struct extent_buffer *src)
{
	int i;
	struct page *p;
	struct extent_buffer *new;
	int num_pages = FUNC8(src);

	new = FUNC3(src->fs_info, src->start, src->len);
	if (new == NULL)
		return NULL;

	for (i = 0; i < num_pages; i++) {
		p = FUNC4(GFP_NOFS);
		if (!p) {
			FUNC6(new);
			return NULL;
		}
		FUNC5(new, p);
		FUNC2(FUNC0(p));
		FUNC1(p);
		new->pages[i] = p;
		FUNC7(FUNC9(p), FUNC9(src->pages[i]));
	}

	FUNC10(EXTENT_BUFFER_UPTODATE, &new->bflags);
	FUNC10(EXTENT_BUFFER_UNMAPPED, &new->bflags);

	return new;
}