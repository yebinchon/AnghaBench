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
struct page {int /*<<< orphan*/  index; struct address_space* mapping; } ;
struct afs_vnode {int /*<<< orphan*/  cache; } ;
struct address_space {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long AFS_PRIV_MAX ; 
 unsigned long AFS_PRIV_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct page*) ; 
 unsigned long FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct afs_vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

int FUNC13(struct page *page)
{
	struct address_space *mapping = page->mapping;
	struct afs_vnode *vnode = FUNC0(mapping->host);
	unsigned long priv;
	unsigned int f, t;
	int ret = 0;

	FUNC4("{%lx}", page->index);

	priv = FUNC9(page);
	if (FUNC6(page)) {
		f = 0;
		t = PAGE_SIZE;
		if (FUNC3(page)) {
			f = priv & AFS_PRIV_MAX;
			t = priv >> AFS_PRIV_SHIFT;
		}

		FUNC11(vnode, FUNC12("launder"),
				     page->index, priv);
		ret = FUNC5(mapping, page->index, page->index, t, f);
	}

	FUNC11(vnode, FUNC12("laundered"),
			     page->index, priv);
	FUNC10(page, 0);
	FUNC1(page);

#ifdef CONFIG_AFS_FSCACHE
	if (PageFsCache(page)) {
		fscache_wait_on_page_write(vnode->cache, page);
		fscache_uncache_page(vnode->cache, page);
	}
#endif
	return ret;
}