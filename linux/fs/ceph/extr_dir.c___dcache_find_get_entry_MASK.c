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
typedef  int u64 ;
struct inode {int /*<<< orphan*/  i_data; } ;
struct dentry {int /*<<< orphan*/  d_lockref; int /*<<< orphan*/  d_lock; } ;
struct ceph_readdir_cache_control {int index; struct dentry** dentries; int /*<<< orphan*/  page; } ;
typedef  scalar_t__ pgoff_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_readdir_cache_control*) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 struct dentry** FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *
FUNC15(struct dentry *parent, u64 idx,
			struct ceph_readdir_cache_control *cache_ctl)
{
	struct inode *dir = FUNC3(parent);
	struct dentry *dentry;
	unsigned idx_mask = (PAGE_SIZE / sizeof(struct dentry *)) - 1;
	loff_t ptr_pos = idx * sizeof(struct dentry *);
	pgoff_t ptr_pgoff = ptr_pos >> PAGE_SHIFT;

	if (ptr_pos >= FUNC6(dir))
		return NULL;

	if (!cache_ctl->page || ptr_pgoff != FUNC9(cache_ctl->page)) {
		FUNC2(cache_ctl);
		cache_ctl->page = FUNC5(&dir->i_data, ptr_pgoff);
		if (!cache_ctl->page) {
			FUNC4(" page %lu not found\n", ptr_pgoff);
			return FUNC0(-EAGAIN);
		}
		/* reading/filling the cache are serialized by
		   i_mutex, no need to use page lock */
		FUNC14(cache_ctl->page);
		cache_ctl->dentries = FUNC7(cache_ctl->page);
	}

	cache_ctl->index = idx & idx_mask;

	FUNC10();
	FUNC12(&parent->d_lock);
	/* check i_size again here, because empty directory can be
	 * marked as complete while not holding the i_mutex. */
	if (FUNC1(dir) && ptr_pos < FUNC6(dir))
		dentry = cache_ctl->dentries[cache_ctl->index];
	else
		dentry = NULL;
	FUNC13(&parent->d_lock);
	if (dentry && !FUNC8(&dentry->d_lockref))
		dentry = NULL;
	FUNC11();
	return dentry ? : FUNC0(-EAGAIN);
}