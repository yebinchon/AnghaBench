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
struct inode {int /*<<< orphan*/  i_data; } ;
struct dentry {int dummy; } ;
struct ceph_readdir_cache_control {unsigned int index; struct dentry** dentries; int /*<<< orphan*/  page; } ;
struct ceph_mds_request {scalar_t__ r_dir_release_cnt; scalar_t__ r_dir_ordered_cnt; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_ordered_count; int /*<<< orphan*/  i_release_count; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct ceph_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_readdir_cache_control*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct dentry** FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry**,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct inode *dir, struct dentry *dn,
			      struct ceph_readdir_cache_control *ctl,
			      struct ceph_mds_request *req)
{
	struct ceph_inode_info *ci = FUNC1(dir);
	unsigned nsize = PAGE_SIZE / sizeof(struct dentry*);
	unsigned idx = ctl->index % nsize;
	pgoff_t pgoff = ctl->index / nsize;

	if (!ctl->page || pgoff != FUNC8(ctl->page)) {
		FUNC2(ctl);
		if (idx == 0)
			ctl->page = FUNC5(&dir->i_data, pgoff);
		else
			ctl->page = FUNC4(&dir->i_data, pgoff);
		if (!ctl->page) {
			ctl->index = -1;
			return idx == 0 ? -ENOMEM : 0;
		}
		/* reading/filling the cache are serialized by
		 * i_mutex, no need to use page lock */
		FUNC9(ctl->page);
		ctl->dentries = FUNC6(ctl->page);
		if (idx == 0)
			FUNC7(ctl->dentries, 0, PAGE_SIZE);
	}

	if (req->r_dir_release_cnt == FUNC0(&ci->i_release_count) &&
	    req->r_dir_ordered_cnt == FUNC0(&ci->i_ordered_count)) {
		FUNC3("readdir cache dn %p idx %d\n", dn, ctl->index);
		ctl->dentries[idx] = dn;
		ctl->index++;
	} else {
		FUNC3("disable readdir cache\n");
		ctl->index = -1;
	}
	return 0;
}