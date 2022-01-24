#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct page {TYPE_2__* mapping; } ;
struct extent_io_tree {int dummy; } ;
struct TYPE_6__ {TYPE_1__* root; struct extent_io_tree io_tree; } ;
struct TYPE_5__ {int /*<<< orphan*/  host; } ;
struct TYPE_4__ {int /*<<< orphan*/  fs_info; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_io_tree*,struct page*,unsigned int) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct page *page, unsigned int offset,
				 unsigned int length)
{
	struct extent_io_tree *tree;
	tree = &FUNC0(page->mapping->host)->io_tree;
	FUNC5(tree, page, offset);
	FUNC3(page, GFP_NOFS);
	if (FUNC2(page)) {
		FUNC4(FUNC0(page->mapping->host)->root->fs_info,
			   "page private not zero on page %llu",
			   (unsigned long long)FUNC6(page));
		FUNC1(page);
		FUNC8(page, 0);
		FUNC7(page);
	}
}