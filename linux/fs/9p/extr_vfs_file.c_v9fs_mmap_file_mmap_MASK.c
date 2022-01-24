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
struct vm_area_struct {int vm_flags; int /*<<< orphan*/ * vm_ops; } ;
struct v9fs_inode {int /*<<< orphan*/  v_mutex; void* writeback_fid; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int FUNC1 (struct p9_fid*) ; 
 struct v9fs_inode* FUNC2 (struct inode*) ; 
 int VM_SHARED ; 
 int VM_WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 struct inode* FUNC4 (struct file*) ; 
 int FUNC5 (struct file*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  v9fs_mmap_file_vm_ops ; 
 struct p9_fid* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct file *filp, struct vm_area_struct *vma)
{
	int retval;
	struct inode *inode;
	struct v9fs_inode *v9inode;
	struct p9_fid *fid;

	inode = FUNC4(filp);
	v9inode = FUNC2(inode);
	FUNC6(&v9inode->v_mutex);
	if (!v9inode->writeback_fid &&
	    (vma->vm_flags & VM_SHARED) &&
	    (vma->vm_flags & VM_WRITE)) {
		/*
		 * clone a fid and add it to writeback_fid
		 * we do it during mmap instead of
		 * page dirty time via write_begin/page_mkwrite
		 * because we want write after unlink usecase
		 * to work.
		 */
		fid = FUNC8(FUNC3(filp));
		if (FUNC0(fid)) {
			retval = FUNC1(fid);
			FUNC7(&v9inode->v_mutex);
			return retval;
		}
		v9inode->writeback_fid = (void *) fid;
	}
	FUNC7(&v9inode->v_mutex);

	retval = FUNC5(filp, vma);
	if (!retval)
		vma->vm_ops = &v9fs_mmap_file_vm_ops;

	return retval;
}