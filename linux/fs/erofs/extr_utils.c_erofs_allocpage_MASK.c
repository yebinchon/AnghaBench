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
struct page {int /*<<< orphan*/  lru; } ;
struct list_head {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int __GFP_NOFAIL ; 
 struct page* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*) ; 
 struct page* FUNC4 (struct list_head*) ; 
 int FUNC5 (struct page*) ; 

struct page *FUNC6(struct list_head *pool, gfp_t gfp, bool nofail)
{
	struct page *page;

	if (!FUNC3(pool)) {
		page = FUNC4(pool);
		FUNC0(FUNC5(page) != 1);
		FUNC2(&page->lru);
	} else {
		page = FUNC1(gfp | (nofail ? __GFP_NOFAIL : 0), 0);
	}
	return page;
}