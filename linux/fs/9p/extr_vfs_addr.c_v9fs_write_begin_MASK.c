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
struct v9fs_inode {int /*<<< orphan*/  writeback_fid; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 struct v9fs_inode* FUNC2 (struct inode*) ; 
 struct page* FUNC3 (struct address_space*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct file*,struct address_space*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct page*) ; 

__attribute__((used)) static int FUNC7(struct file *filp, struct address_space *mapping,
			    loff_t pos, unsigned len, unsigned flags,
			    struct page **pagep, void **fsdata)
{
	int retval = 0;
	struct page *page;
	struct v9fs_inode *v9inode;
	pgoff_t index = pos >> PAGE_SHIFT;
	struct inode *inode = mapping->host;


	FUNC4(P9_DEBUG_VFS, "filp %p, mapping %p\n", filp, mapping);

	v9inode = FUNC2(inode);
start:
	page = FUNC3(mapping, index, flags);
	if (!page) {
		retval = -ENOMEM;
		goto out;
	}
	FUNC0(!v9inode->writeback_fid);
	if (FUNC1(page))
		goto out;

	if (len == PAGE_SIZE)
		goto out;

	retval = FUNC6(v9inode->writeback_fid, page);
	FUNC5(page);
	if (!retval)
		goto start;
out:
	*pagep = page;
	return retval;
}