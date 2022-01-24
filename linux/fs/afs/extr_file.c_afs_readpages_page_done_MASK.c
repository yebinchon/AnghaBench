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
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
struct afs_vnode {int /*<<< orphan*/  cache; TYPE_1__ status; } ;
struct afs_read {size_t index; struct page** pages; struct afs_vnode* vnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct page*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

__attribute__((used)) static void FUNC7(struct afs_read *req)
{
#ifdef CONFIG_AFS_FSCACHE
	struct afs_vnode *vnode = req->vnode;
#endif
	struct page *page = req->pages[req->index];

	req->pages[req->index] = NULL;
	FUNC2(page);

	/* send the page to the cache */
#ifdef CONFIG_AFS_FSCACHE
	if (PageFsCache(page) &&
	    fscache_write_page(vnode->cache, page, vnode->status.size,
			       GFP_KERNEL) != 0) {
		fscache_uncache_page(vnode->cache, page);
		BUG_ON(PageFsCache(page));
	}
#endif
	FUNC6(page);
	FUNC5(page);
}