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
struct radix_tree_root {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  global_db_count ; 
 struct page* FUNC2 (struct radix_tree_root*,int) ; 

__attribute__((used)) static void FUNC3(struct radix_tree_root *blocks,
				int start, int end)
{
	int i;
	struct page *page;

	for (i = start; i < end; i++) {
		page = FUNC2(blocks, i);
		if (page) {
			FUNC0(page);
			FUNC1(&global_db_count);
		}
	}
}