#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int /*<<< orphan*/  index; int /*<<< orphan*/  flags; TYPE_1__* mapping; } ;
struct TYPE_4__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {int /*<<< orphan*/  cache; TYPE_2__ fid; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_3__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct afs_vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct page *page, gfp_t gfp_flags)
{
	struct afs_vnode *vnode = FUNC0(page->mapping->host);
	unsigned long priv;

	FUNC3("{{%llx:%llu}[%lu],%lx},%x",
	       vnode->fid.vid, vnode->fid.vnode, page->index, page->flags,
	       gfp_flags);

	/* deny if page is being written to the cache and the caller hasn't
	 * elected to wait */
#ifdef CONFIG_AFS_FSCACHE
	if (!fscache_maybe_release_page(vnode->cache, page, gfp_flags)) {
		_leave(" = F [cache busy]");
		return 0;
	}
#endif

	if (FUNC2(page)) {
		priv = FUNC6(page);
		FUNC8(vnode, FUNC9("rel"),
				     page->index, priv);
		FUNC7(page, 0);
		FUNC1(page);
	}

	/* indicate that the page can be released */
	FUNC4(" = T");
	return 1;
}