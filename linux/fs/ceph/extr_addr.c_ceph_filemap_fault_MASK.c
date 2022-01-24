#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t vm_fault_t ;
struct vm_fault {scalar_t__ pgoff; struct page* page; struct vm_area_struct* vma; } ;
struct vm_area_struct {TYPE_1__* vm_file; } ;
struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct ceph_inode_info {scalar_t__ i_inline_version; } ;
struct ceph_file_info {int fmode; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_3__ {struct ceph_file_info* private_data; } ;

/* Variables and functions */
 int CEPH_CAP_FILE_CACHE ; 
 int CEPH_CAP_FILE_LAZYIO ; 
 int /*<<< orphan*/  CEPH_CAP_FILE_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int CEPH_FILE_MODE_LAZY ; 
 scalar_t__ CEPH_INLINE_NONE ; 
 int /*<<< orphan*/  CEPH_STAT_CAP_INLINE_DATA ; 
 int EAGAIN ; 
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 size_t VM_FAULT_LOCKED ; 
 size_t VM_FAULT_MAJOR ; 
 size_t VM_FAULT_OOM ; 
 size_t VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  __GFP_FS ; 
 int FUNC2 (struct inode*,struct page*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_file_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_file_info*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int*,struct page**) ; 
 struct ceph_inode_info* FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_inode_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct inode*,scalar_t__,size_t,size_t,...) ; 
 struct inode* FUNC13 (TYPE_1__*) ; 
 size_t FUNC14 (struct vm_fault*) ; 
 struct page* FUNC15 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 scalar_t__ FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 int /*<<< orphan*/  rw_ctx ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 size_t FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (struct page*,int,scalar_t__) ; 

__attribute__((used)) static vm_fault_t FUNC23(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	struct inode *inode = FUNC13(vma->vm_file);
	struct ceph_inode_info *ci = FUNC8(inode);
	struct ceph_file_info *fi = vma->vm_file->private_data;
	struct page *pinned_page = NULL;
	loff_t off = vmf->pgoff << PAGE_SHIFT;
	int want, got, err;
	sigset_t oldset;
	vm_fault_t ret = VM_FAULT_SIGBUS;

	FUNC4(&oldset);

	FUNC12("filemap_fault %p %llx.%llx %llu~%zd trying to get caps\n",
	     inode, FUNC11(inode), off, (size_t)PAGE_SIZE);
	if (fi->fmode & CEPH_FILE_MODE_LAZY)
		want = CEPH_CAP_FILE_CACHE | CEPH_CAP_FILE_LAZYIO;
	else
		want = CEPH_CAP_FILE_CACHE;

	got = 0;
	err = FUNC7(vma->vm_file, CEPH_CAP_FILE_RD, want, -1,
			    &got, &pinned_page);
	if (err < 0)
		goto out_restore;

	FUNC12("filemap_fault %p %llu~%zd got cap refs on %s\n",
	     inode, off, (size_t)PAGE_SIZE, FUNC5(got));

	if ((got & (CEPH_CAP_FILE_CACHE | CEPH_CAP_FILE_LAZYIO)) ||
	    ci->i_inline_version == CEPH_INLINE_NONE) {
		FUNC0(rw_ctx, got);
		FUNC3(fi, &rw_ctx);
		ret = FUNC14(vmf);
		FUNC6(fi, &rw_ctx);
		FUNC12("filemap_fault %p %llu~%zd drop cap refs %s ret %x\n",
			inode, off, (size_t)PAGE_SIZE,
				FUNC5(got), ret);
	} else
		err = -EAGAIN;

	if (pinned_page)
		FUNC19(pinned_page);
	FUNC9(ci, got);

	if (err != -EAGAIN)
		goto out_restore;

	/* read inline data */
	if (off >= PAGE_SIZE) {
		/* does not support inline data > PAGE_SIZE */
		ret = VM_FAULT_SIGBUS;
	} else {
		struct address_space *mapping = inode->i_mapping;
		struct page *page = FUNC15(mapping, 0,
						FUNC18(mapping,
						~__GFP_FS));
		if (!page) {
			ret = VM_FAULT_OOM;
			goto out_inline;
		}
		err = FUNC2(inode, page,
					 CEPH_STAT_CAP_INLINE_DATA, true);
		if (err < 0 || off >= FUNC17(inode)) {
			FUNC20(page);
			FUNC19(page);
			ret = FUNC21(err);
			goto out_inline;
		}
		if (err < PAGE_SIZE)
			FUNC22(page, err, PAGE_SIZE);
		else
			FUNC16(page);
		FUNC1(page);
		vmf->page = page;
		ret = VM_FAULT_MAJOR | VM_FAULT_LOCKED;
out_inline:
		FUNC12("filemap_fault %p %llu~%zd read inline data ret %x\n",
		     inode, off, (size_t)PAGE_SIZE, ret);
	}
out_restore:
	FUNC10(&oldset);
	if (err < 0)
		ret = FUNC21(err);

	return ret;
}