#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_fault_t ;
typedef  int u64 ;
struct vm_fault {TYPE_1__* vma; struct page* page; } ;
struct page {scalar_t__ mapping; int index; } ;
struct inode {scalar_t__ i_mapping; int /*<<< orphan*/  i_sb; } ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct extent_changeset {int dummy; } ;
struct btrfs_ordered_extent {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  generation; int /*<<< orphan*/  sectorsize; } ;
typedef  int loff_t ;
struct TYPE_8__ {TYPE_2__* root; int /*<<< orphan*/  last_log_commit; int /*<<< orphan*/  last_sub_trans; int /*<<< orphan*/  last_trans; struct extent_io_tree io_tree; } ;
struct TYPE_7__ {int /*<<< orphan*/  last_log_commit; int /*<<< orphan*/  log_transid; } ;
struct TYPE_6__ {int /*<<< orphan*/  vm_file; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int EXTENT_DEFRAG ; 
 int EXTENT_DELALLOC ; 
 int EXTENT_DO_ACCOUNTING ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ VM_FAULT_LOCKED ; 
 scalar_t__ VM_FAULT_NOPAGE ; 
 scalar_t__ VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct extent_changeset*,int,int,int) ; 
 int FUNC5 (struct inode*,struct extent_changeset**,int,int) ; 
 struct btrfs_ordered_extent* FUNC6 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_ordered_extent*) ; 
 struct btrfs_fs_info* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,int,int,int /*<<< orphan*/ ,struct extent_state**) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct btrfs_ordered_extent*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_io_tree*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct extent_state**) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_changeset*) ; 
 struct inode* FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int FUNC16 (struct inode*) ; 
 char* FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct extent_io_tree*,int,int,struct extent_state**) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC22 (int) ; 
 int FUNC23 (struct page*) ; 
 int FUNC24 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct page*) ; 
 int /*<<< orphan*/  FUNC28 (struct page*) ; 
 int /*<<< orphan*/  FUNC29 (struct extent_io_tree*,int,int,struct extent_state**) ; 
 int /*<<< orphan*/  FUNC30 (struct page*) ; 
 scalar_t__ FUNC31 (int) ; 
 int /*<<< orphan*/  FUNC32 (struct page*) ; 

vm_fault_t FUNC33(struct vm_fault *vmf)
{
	struct page *page = vmf->page;
	struct inode *inode = FUNC13(vmf->vma->vm_file);
	struct btrfs_fs_info *fs_info = FUNC8(inode->i_sb);
	struct extent_io_tree *io_tree = &FUNC0(inode)->io_tree;
	struct btrfs_ordered_extent *ordered;
	struct extent_state *cached_state = NULL;
	struct extent_changeset *data_reserved = NULL;
	char *kaddr;
	unsigned long zero_start;
	loff_t size;
	vm_fault_t ret;
	int ret2;
	int reserved = 0;
	u64 reserved_space;
	u64 page_start;
	u64 page_end;
	u64 end;

	reserved_space = PAGE_SIZE;

	FUNC26(inode->i_sb);
	page_start = FUNC23(page);
	page_end = page_start + PAGE_SIZE - 1;
	end = page_end;

	/*
	 * Reserving delalloc space after obtaining the page lock can lead to
	 * deadlock. For example, if a dirty page is locked by this function
	 * and the call to btrfs_delalloc_reserve_space() ends up triggering
	 * dirty page write out, then the btrfs_writepage() function could
	 * end up waiting indefinitely to get a lock on the page currently
	 * being processed by btrfs_page_mkwrite() function.
	 */
	ret2 = FUNC5(inode, &data_reserved, page_start,
					   reserved_space);
	if (!ret2) {
		ret2 = FUNC14(vmf->vma->vm_file);
		reserved = 1;
	}
	if (ret2) {
		ret = FUNC31(ret2);
		if (reserved)
			goto out;
		goto out_noreserve;
	}

	ret = VM_FAULT_NOPAGE; /* make the VM retry the fault */
again:
	FUNC20(page);
	size = FUNC16(inode);

	if ((page->mapping != inode->i_mapping) ||
	    (page_start >= size)) {
		/* page got truncated out from underneath us */
		goto out_unlock;
	}
	FUNC32(page);

	FUNC19(io_tree, page_start, page_end, &cached_state);
	FUNC28(page);

	/*
	 * we can't set the delalloc bits if there are pending ordered
	 * extents.  Drop our locks and wait for them to finish
	 */
	ordered = FUNC6(FUNC0(inode), page_start,
			PAGE_SIZE);
	if (ordered) {
		FUNC29(io_tree, page_start, page_end,
				     &cached_state);
		FUNC30(page);
		FUNC10(inode, ordered, 1);
		FUNC7(ordered);
		goto again;
	}

	if (page->index == ((size - 1) >> PAGE_SHIFT)) {
		reserved_space = FUNC24(size - page_start,
					  fs_info->sectorsize);
		if (reserved_space < PAGE_SIZE) {
			end = page_start + reserved_space - 1;
			FUNC4(inode, data_reserved,
					page_start, PAGE_SIZE - reserved_space,
					true);
		}
	}

	/*
	 * page_mkwrite gets called when the page is firstly dirtied after it's
	 * faulted in, but write(2) could also dirty a page and set delalloc
	 * bits, thus in this case for space account reason, we still need to
	 * clear any delalloc bits within this page range since we have to
	 * reserve data&meta space before lock_page() (see above comments).
	 */
	FUNC11(&FUNC0(inode)->io_tree, page_start, end,
			  EXTENT_DELALLOC | EXTENT_DO_ACCOUNTING |
			  EXTENT_DEFRAG, 0, 0, &cached_state);

	ret2 = FUNC9(inode, page_start, end, 0,
					&cached_state);
	if (ret2) {
		FUNC29(io_tree, page_start, page_end,
				     &cached_state);
		ret = VM_FAULT_SIGBUS;
		goto out_unlock;
	}
	ret2 = 0;

	/* page is wholly or partially inside EOF */
	if (page_start + PAGE_SIZE > size)
		zero_start = FUNC22(size);
	else
		zero_start = PAGE_SIZE;

	if (zero_start != PAGE_SIZE) {
		kaddr = FUNC17(page);
		FUNC21(kaddr + zero_start, 0, PAGE_SIZE - zero_start);
		FUNC15(page);
		FUNC18(page);
	}
	FUNC1(page);
	FUNC27(page);
	FUNC2(page);

	FUNC0(inode)->last_trans = fs_info->generation;
	FUNC0(inode)->last_sub_trans = FUNC0(inode)->root->log_transid;
	FUNC0(inode)->last_log_commit = FUNC0(inode)->root->last_log_commit;

	FUNC29(io_tree, page_start, page_end, &cached_state);

	if (!ret2) {
		FUNC3(FUNC0(inode), PAGE_SIZE);
		FUNC25(inode->i_sb);
		FUNC12(data_reserved);
		return VM_FAULT_LOCKED;
	}

out_unlock:
	FUNC30(page);
out:
	FUNC3(FUNC0(inode), PAGE_SIZE);
	FUNC4(inode, data_reserved, page_start,
				     reserved_space, (ret != 0));
out_noreserve:
	FUNC25(inode->i_sb);
	FUNC12(data_reserved);
	return ret;
}