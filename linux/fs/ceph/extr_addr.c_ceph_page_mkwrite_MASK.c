#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t vm_fault_t ;
struct vm_fault {struct page* page; struct vm_area_struct* vma; } ;
struct vm_area_struct {TYPE_1__* vm_file; } ;
struct page {scalar_t__ mapping; } ;
struct inode {scalar_t__ i_mapping; int /*<<< orphan*/  i_sb; } ;
struct ceph_inode_info {scalar_t__ i_inline_version; int /*<<< orphan*/  i_ceph_lock; } ;
struct ceph_file_info {int fmode; } ;
struct ceph_cap_flush {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  size_t loff_t ;
struct TYPE_6__ {struct ceph_file_info* private_data; } ;

/* Variables and functions */
 int CEPH_CAP_FILE_BUFFER ; 
 int CEPH_CAP_FILE_LAZYIO ; 
 int /*<<< orphan*/  CEPH_CAP_FILE_WR ; 
 int CEPH_FILE_MODE_LAZY ; 
 scalar_t__ CEPH_INLINE_NONE ; 
 int EAGAIN ; 
 size_t PAGE_MASK ; 
 size_t PAGE_SIZE ; 
 size_t VM_FAULT_LOCKED ; 
 size_t VM_FAULT_NOPAGE ; 
 size_t VM_FAULT_OOM ; 
 size_t VM_FAULT_SIGBUS ; 
 int FUNC0 (struct ceph_inode_info*,int /*<<< orphan*/ ,struct ceph_cap_flush**) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int) ; 
 struct ceph_cap_flush* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_cap_flush*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int,size_t,int*,int /*<<< orphan*/ *) ; 
 struct ceph_inode_info* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_inode_info*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*,struct page*) ; 
 int FUNC11 (TYPE_1__*,size_t,size_t,struct page*) ; 
 size_t FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (char*,struct inode*,size_t,size_t,size_t,...) ; 
 struct inode* FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 size_t FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 size_t FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 
 size_t FUNC26 (int) ; 

__attribute__((used)) static vm_fault_t FUNC27(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	struct inode *inode = FUNC14(vma->vm_file);
	struct ceph_inode_info *ci = FUNC7(inode);
	struct ceph_file_info *fi = vma->vm_file->private_data;
	struct ceph_cap_flush *prealloc_cf;
	struct page *page = vmf->page;
	loff_t off = FUNC19(page);
	loff_t size = FUNC16(inode);
	size_t len;
	int want, got, err;
	sigset_t oldset;
	vm_fault_t ret = VM_FAULT_SIGBUS;

	prealloc_cf = FUNC2();
	if (!prealloc_cf)
		return VM_FAULT_OOM;

	FUNC21(inode->i_sb);
	FUNC3(&oldset);

	if (ci->i_inline_version != CEPH_INLINE_NONE) {
		struct page *locked_page = NULL;
		if (off == 0) {
			FUNC18(page);
			locked_page = page;
		}
		err = FUNC10(vma->vm_file, locked_page);
		if (locked_page)
			FUNC25(locked_page);
		if (err < 0)
			goto out_free;
	}

	if (off + PAGE_SIZE <= size)
		len = PAGE_SIZE;
	else
		len = size & ~PAGE_MASK;

	FUNC13("page_mkwrite %p %llx.%llx %llu~%zd getting caps i_size %llu\n",
	     inode, FUNC12(inode), off, len, size);
	if (fi->fmode & CEPH_FILE_MODE_LAZY)
		want = CEPH_CAP_FILE_BUFFER | CEPH_CAP_FILE_LAZYIO;
	else
		want = CEPH_CAP_FILE_BUFFER;

	got = 0;
	err = FUNC6(vma->vm_file, CEPH_CAP_FILE_WR, want, off + len,
			    &got, NULL);
	if (err < 0)
		goto out_free;

	FUNC13("page_mkwrite %p %llu~%zd got cap refs on %s\n",
	     inode, off, len, FUNC4(got));

	/* Update time before taking page lock */
	FUNC15(vma->vm_file);
	FUNC17(inode);

	do {
		FUNC18(page);

		if ((off > size) || (page->mapping != inode->i_mapping)) {
			FUNC25(page);
			ret = VM_FAULT_NOPAGE;
			break;
		}

		err = FUNC11(vma->vm_file, off, len, page);
		if (err >= 0) {
			/* success.  we'll keep the page locked. */
			FUNC22(page);
			ret = VM_FAULT_LOCKED;
		}
	} while (err == -EAGAIN);

	if (ret == VM_FAULT_LOCKED ||
	    ci->i_inline_version != CEPH_INLINE_NONE) {
		int dirty;
		FUNC23(&ci->i_ceph_lock);
		ci->i_inline_version = CEPH_INLINE_NONE;
		dirty = FUNC0(ci, CEPH_CAP_FILE_WR,
					       &prealloc_cf);
		FUNC24(&ci->i_ceph_lock);
		if (dirty)
			FUNC1(inode, dirty);
	}

	FUNC13("page_mkwrite %p %llu~%zd dropping cap refs on %s ret %x\n",
	     inode, off, len, FUNC4(got), ret);
	FUNC8(ci, got);
out_free:
	FUNC9(&oldset);
	FUNC20(inode->i_sb);
	FUNC5(prealloc_cf);
	if (err < 0)
		ret = FUNC26(err);
	return ret;
}