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
typedef  void* u64 ;
struct rb_node {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct btrfs_root {int nr_ordered_extents; int /*<<< orphan*/  ordered_extent_lock; int /*<<< orphan*/  ordered_root; int /*<<< orphan*/  ordered_extents; } ;
struct btrfs_ordered_inode_tree {int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; } ;
struct btrfs_ordered_extent {int compress_type; int /*<<< orphan*/  root_extent_list; int /*<<< orphan*/  rb_node; int /*<<< orphan*/  trans_list; int /*<<< orphan*/  log_list; int /*<<< orphan*/  completion; int /*<<< orphan*/  work_list; int /*<<< orphan*/  list; int /*<<< orphan*/  wait; int /*<<< orphan*/  refs; int /*<<< orphan*/  flags; void* truncated_len; int /*<<< orphan*/  inode; void* bytes_left; void* disk_len; void* len; void* start; void* file_offset; } ;
struct btrfs_fs_info {int /*<<< orphan*/  ordered_root_lock; int /*<<< orphan*/  ordered_roots; int /*<<< orphan*/  delalloc_batch; int /*<<< orphan*/  dio_bytes; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; struct btrfs_ordered_inode_tree ordered_tree; struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int BTRFS_ORDERED_COMPLETE ; 
 int BTRFS_ORDERED_DIRECT ; 
 int BTRFS_ORDERED_IO_DONE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  btrfs_ordered_extent_cache ; 
 struct btrfs_fs_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct btrfs_ordered_extent* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,struct btrfs_ordered_extent*) ; 
 struct rb_node* FUNC20 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct inode *inode, u64 file_offset,
				      u64 start, u64 len, u64 disk_len,
				      int type, int dio, int compress_type)
{
	struct btrfs_fs_info *fs_info = FUNC4(inode->i_sb);
	struct btrfs_root *root = FUNC0(inode)->root;
	struct btrfs_ordered_inode_tree *tree;
	struct rb_node *node;
	struct btrfs_ordered_extent *entry;

	tree = &FUNC0(inode)->ordered_tree;
	entry = FUNC8(btrfs_ordered_extent_cache, GFP_NOFS);
	if (!entry)
		return -ENOMEM;

	entry->file_offset = file_offset;
	entry->start = start;
	entry->len = len;
	entry->disk_len = disk_len;
	entry->bytes_left = len;
	entry->inode = FUNC5(inode);
	entry->compress_type = compress_type;
	entry->truncated_len = (u64)-1;
	if (type != BTRFS_ORDERED_IO_DONE && type != BTRFS_ORDERED_COMPLETE)
		FUNC14(type, &entry->flags);

	if (dio) {
		FUNC12(&fs_info->dio_bytes, len,
					 fs_info->delalloc_batch);
		FUNC14(BTRFS_ORDERED_DIRECT, &entry->flags);
	}

	/* one ref for the tree */
	FUNC13(&entry->refs, 1);
	FUNC7(&entry->wait);
	FUNC2(&entry->list);
	FUNC2(&entry->root_extent_list);
	FUNC2(&entry->work_list);
	FUNC6(&entry->completion);
	FUNC2(&entry->log_list);
	FUNC2(&entry->trans_list);

	FUNC19(inode, entry);

	FUNC16(&tree->lock);
	node = FUNC20(&tree->tree, file_offset,
			   &entry->rb_node);
	if (node)
		FUNC11(inode, -EEXIST, file_offset);
	FUNC18(&tree->lock);

	FUNC15(&root->ordered_extent_lock);
	FUNC9(&entry->root_extent_list,
		      &root->ordered_extents);
	root->nr_ordered_extents++;
	if (root->nr_ordered_extents == 1) {
		FUNC15(&fs_info->ordered_root_lock);
		FUNC1(!FUNC10(&root->ordered_root));
		FUNC9(&root->ordered_root, &fs_info->ordered_roots);
		FUNC17(&fs_info->ordered_root_lock);
	}
	FUNC17(&root->ordered_extent_lock);

	/*
	 * We don't need the count_max_extents here, we can assume that all of
	 * that work has been done at higher layers, so this is truly the
	 * smallest the extent is going to get.
	 */
	FUNC15(&FUNC0(inode)->lock);
	FUNC3(FUNC0(inode), 1);
	FUNC17(&FUNC0(inode)->lock);

	return 0;
}