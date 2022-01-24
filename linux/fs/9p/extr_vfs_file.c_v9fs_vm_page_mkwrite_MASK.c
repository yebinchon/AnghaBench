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
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {TYPE_1__* vma; struct page* page; } ;
struct v9fs_inode {int /*<<< orphan*/  writeback_fid; } ;
struct page {scalar_t__ mapping; } ;
struct inode {scalar_t__ i_mapping; } ;
struct file {scalar_t__ private_data; } ;
struct TYPE_2__ {struct file* vm_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 struct v9fs_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  VM_FAULT_LOCKED ; 
 int /*<<< orphan*/  VM_FAULT_NOPAGE ; 
 struct inode* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

__attribute__((used)) static vm_fault_t
FUNC9(struct vm_fault *vmf)
{
	struct v9fs_inode *v9inode;
	struct page *page = vmf->page;
	struct file *filp = vmf->vma->vm_file;
	struct inode *inode = FUNC2(filp);


	FUNC5(P9_DEBUG_VFS, "page %p fid %lx\n",
		 page, (unsigned long)filp->private_data);

	/* Update file times before taking page lock */
	FUNC3(filp);

	v9inode = FUNC1(inode);
	/* make sure the cache has finished storing the page */
	FUNC7(inode, page);
	FUNC0(!v9inode->writeback_fid);
	FUNC4(page);
	if (page->mapping != inode->i_mapping)
		goto out_unlock;
	FUNC8(page);

	return VM_FAULT_LOCKED;
out_unlock:
	FUNC6(page);
	return VM_FAULT_NOPAGE;
}