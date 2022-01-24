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
struct page {int /*<<< orphan*/  index; } ;
struct key {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {int /*<<< orphan*/  wb_lock; int /*<<< orphan*/  vfs_inode; TYPE_1__ fid; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 struct afs_vnode* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct key* FUNC6 (struct file*) ; 
 int FUNC7 (struct afs_vnode*,struct key*,scalar_t__,unsigned int,struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct file*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 

int FUNC16(struct file *file, struct address_space *mapping,
		  loff_t pos, unsigned len, unsigned copied,
		  struct page *page, void *fsdata)
{
	struct afs_vnode *vnode = FUNC0(FUNC8(file));
	struct key *key = FUNC6(file);
	loff_t i_size, maybe_i_size;
	int ret;

	FUNC5("{%llx:%llu},{%lx}",
	       vnode->fid.vid, vnode->fid.vnode, page->index);

	maybe_i_size = pos + copied;

	i_size = FUNC9(&vnode->vfs_inode);
	if (maybe_i_size > i_size) {
		FUNC13(&vnode->wb_lock);
		i_size = FUNC9(&vnode->vfs_inode);
		if (maybe_i_size > i_size)
			FUNC10(&vnode->vfs_inode, maybe_i_size);
		FUNC14(&vnode->wb_lock);
	}

	if (!FUNC2(page)) {
		if (copied < len) {
			/* Try and load any missing data from the server.  The
			 * unmarshalling routine will take care of clearing any
			 * bits that are beyond the EOF.
			 */
			ret = FUNC7(vnode, key, pos + copied,
					    len - copied, page);
			if (ret < 0)
				goto out;
		}
		FUNC3(page);
	}

	FUNC12(page);
	if (FUNC1(page))
		FUNC4("dirtied");
	ret = copied;

out:
	FUNC15(page);
	FUNC11(page);
	return ret;
}