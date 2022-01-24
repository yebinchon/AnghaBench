#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  unique; int /*<<< orphan*/  vnode; } ;
union afs_xdr_dirent {TYPE_1__ u; } ;
struct TYPE_7__ {int* alloc_ctrs; } ;
union afs_xdr_dir_block {TYPE_2__ meta; union afs_xdr_dirent* dirents; } ;
struct qstr {int /*<<< orphan*/  name; scalar_t__ len; } ;
struct page {int dummy; } ;
struct afs_xdr_dir_page {union afs_xdr_dir_block* blocks; } ;
struct TYPE_8__ {int /*<<< orphan*/  data_version; } ;
struct TYPE_9__ {int /*<<< orphan*/  i_mapping; } ;
struct afs_vnode {int /*<<< orphan*/  flags; TYPE_3__ status; TYPE_4__ vfs_inode; } ;
typedef  unsigned int pgoff_t ;
typedef  int loff_t ;
typedef  enum afs_edit_dir_reason { ____Placeholder_afs_edit_dir_reason } afs_edit_dir_reason ;

/* Variables and functions */
 unsigned int AFS_DIR_BLOCKS_PER_PAGE ; 
 unsigned int AFS_DIR_BLOCKS_WITH_CTR ; 
 int AFS_DIR_BLOCK_SIZE ; 
 unsigned int AFS_DIR_DIRENT_SIZE ; 
 int AFS_DIR_MAX_BLOCKS ; 
 int AFS_DIR_SLOTS_PER_BLOCK ; 
 int /*<<< orphan*/  AFS_VNODE_DIR_VALID ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (union afs_xdr_dir_block*,int,unsigned int) ; 
 int FUNC4 (union afs_xdr_dir_block*,struct qstr*,unsigned int) ; 
 int /*<<< orphan*/  afs_edit_dir_delete ; 
 int /*<<< orphan*/  afs_edit_dir_delete_error ; 
 int /*<<< orphan*/  afs_edit_dir_delete_inval ; 
 int /*<<< orphan*/  afs_edit_dir_delete_noent ; 
 int /*<<< orphan*/  FUNC5 (struct afs_vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct page* FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 struct afs_xdr_dir_page* FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (union afs_xdr_dirent*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  n_dir_rm ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 unsigned int FUNC15 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct afs_vnode*,int,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 

void FUNC19(struct afs_vnode *vnode,
			 struct qstr *name, enum afs_edit_dir_reason why)
{
	struct afs_xdr_dir_page *meta_page, *dir_page;
	union afs_xdr_dir_block *meta, *block;
	union afs_xdr_dirent *de;
	struct page *page0, *page;
	unsigned int need_slots, nr_blocks, b;
	pgoff_t index;
	loff_t i_size;
	int slot;

	FUNC1(",,{%d,%s},", name->len, name->name);

	i_size = FUNC8(&vnode->vfs_inode);
	if (i_size < AFS_DIR_BLOCK_SIZE ||
	    i_size > AFS_DIR_BLOCK_SIZE * AFS_DIR_MAX_BLOCKS ||
	    (i_size & (AFS_DIR_BLOCK_SIZE - 1))) {
		FUNC6(AFS_VNODE_DIR_VALID, &vnode->flags);
		return;
	}
	nr_blocks = i_size / AFS_DIR_BLOCK_SIZE;

	page0 = FUNC7(vnode->vfs_inode.i_mapping, 0);
	if (!page0) {
		FUNC6(AFS_VNODE_DIR_VALID, &vnode->flags);
		FUNC2(" [fgp]");
		return;
	}

	/* Work out how many slots we're going to discard. */
	need_slots = FUNC15(12 + name->len + 1 + 4, AFS_DIR_DIRENT_SIZE);
	need_slots /= AFS_DIR_DIRENT_SIZE;

	meta_page = FUNC10(page0);
	meta = &meta_page->blocks[0];

	/* Find a page that has sufficient slots available.  Each VM page
	 * contains two or more directory blocks.
	 */
	for (b = 0; b < nr_blocks; b++) {
		index = b / AFS_DIR_BLOCKS_PER_PAGE;
		if (index != 0) {
			page = FUNC7(vnode->vfs_inode.i_mapping, index);
			if (!page)
				goto error;
			dir_page = FUNC10(page);
		} else {
			page = page0;
			dir_page = meta_page;
		}

		/* Abandon the edit if we got a callback break. */
		if (!FUNC16(AFS_VNODE_DIR_VALID, &vnode->flags))
			goto invalidated;

		block = &dir_page->blocks[b % AFS_DIR_BLOCKS_PER_PAGE];

		if (b > AFS_DIR_BLOCKS_WITH_CTR ||
		    meta->meta.alloc_ctrs[b] <= AFS_DIR_SLOTS_PER_BLOCK - 1 - need_slots) {
			slot = FUNC4(block, name, b);
			if (slot >= 0)
				goto found_dirent;
		}

		if (page != page0) {
			FUNC18(page);
			FUNC11(page);
			FUNC14(page);
		}
	}

	/* Didn't find the dirent to clobber.  Download the directory again. */
	FUNC17(vnode, why, afs_edit_dir_delete_noent,
			   0, 0, 0, 0, name->name);
	FUNC6(AFS_VNODE_DIR_VALID, &vnode->flags);
	goto out_unmap;

found_dirent:
	de = &block->dirents[slot];

	FUNC17(vnode, why, afs_edit_dir_delete, b, slot,
			   FUNC13(de->u.vnode), FUNC13(de->u.unique),
			   name->name);

	FUNC12(de, 0, sizeof(*de) * need_slots);

	/* Adjust the bitmap. */
	FUNC3(block, slot, need_slots);
	if (page != page0) {
		FUNC18(page);
		FUNC11(page);
		FUNC14(page);
	}

	/* Adjust the allocation counter. */
	if (b < AFS_DIR_BLOCKS_WITH_CTR)
		meta->meta.alloc_ctrs[b] += need_slots;

	FUNC9(&vnode->vfs_inode, vnode->status.data_version);
	FUNC5(vnode, n_dir_rm);
	FUNC0("Remove %s from %u[%u]", name->name, b, slot);

out_unmap:
	FUNC18(page0);
	FUNC11(page0);
	FUNC14(page0);
	FUNC2("");
	return;

invalidated:
	FUNC17(vnode, why, afs_edit_dir_delete_inval,
			   0, 0, 0, 0, name->name);
	FUNC6(AFS_VNODE_DIR_VALID, &vnode->flags);
	if (page != page0) {
		FUNC18(page);
		FUNC11(page);
		FUNC14(page);
	}
	goto out_unmap;

error:
	FUNC17(vnode, why, afs_edit_dir_delete_error,
			   0, 0, 0, 0, name->name);
	FUNC6(AFS_VNODE_DIR_VALID, &vnode->flags);
	goto out_unmap;
}