#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct super_block {scalar_t__ s_magic; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int track_uptodate; } ;
struct TYPE_3__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct btrfs_inode {int /*<<< orphan*/  dio_sem; int /*<<< orphan*/  rb_node; int /*<<< orphan*/  delayed_iput; int /*<<< orphan*/  delalloc_inodes; int /*<<< orphan*/  ordered_tree; int /*<<< orphan*/  delalloc_mutex; int /*<<< orphan*/  log_mutex; int /*<<< orphan*/  sync_writers; TYPE_2__ io_failure_tree; TYPE_2__ io_tree; int /*<<< orphan*/  extent_tree; struct inode vfs_inode; TYPE_1__ i_otime; int /*<<< orphan*/ * delayed_node; void* defrag_compress; void* prop_compress; scalar_t__ runtime_flags; int /*<<< orphan*/  block_rsv; scalar_t__ outstanding_extents; int /*<<< orphan*/  lock; scalar_t__ last_log_commit; scalar_t__ last_unlink_trans; scalar_t__ dir_index; scalar_t__ index_cnt; scalar_t__ csum_bytes; scalar_t__ flags; scalar_t__ disk_i_size; scalar_t__ defrag_bytes; scalar_t__ new_delalloc_bytes; scalar_t__ delalloc_bytes; scalar_t__ logged_trans; scalar_t__ last_sub_trans; scalar_t__ last_trans; scalar_t__ generation; int /*<<< orphan*/ * root; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_BLOCK_RSV_DELALLOC ; 
 void* BTRFS_COMPRESS_NONE ; 
 scalar_t__ BTRFS_TEST_MAGIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IO_TREE_INODE_IO ; 
 int /*<<< orphan*/  IO_TREE_INODE_IO_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btrfs_inode_cachep ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct btrfs_fs_info* FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*,TYPE_2__*,int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct btrfs_inode* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct inode *FUNC12(struct super_block *sb)
{
	struct btrfs_fs_info *fs_info = FUNC5(sb);
	struct btrfs_inode *ei;
	struct inode *inode;

	ei = FUNC9(btrfs_inode_cachep, GFP_KERNEL);
	if (!ei)
		return NULL;

	ei->root = NULL;
	ei->generation = 0;
	ei->last_trans = 0;
	ei->last_sub_trans = 0;
	ei->logged_trans = 0;
	ei->delalloc_bytes = 0;
	ei->new_delalloc_bytes = 0;
	ei->defrag_bytes = 0;
	ei->disk_i_size = 0;
	ei->flags = 0;
	ei->csum_bytes = 0;
	ei->index_cnt = (u64)-1;
	ei->dir_index = 0;
	ei->last_unlink_trans = 0;
	ei->last_log_commit = 0;

	FUNC11(&ei->lock);
	ei->outstanding_extents = 0;
	if (sb->s_magic != BTRFS_TEST_MAGIC)
		FUNC3(fs_info, &ei->block_rsv,
					      BTRFS_BLOCK_RSV_DELALLOC);
	ei->runtime_flags = 0;
	ei->prop_compress = BTRFS_COMPRESS_NONE;
	ei->defrag_compress = BTRFS_COMPRESS_NONE;

	ei->delayed_node = NULL;

	ei->i_otime.tv_sec = 0;
	ei->i_otime.tv_nsec = 0;

	inode = &ei->vfs_inode;
	FUNC7(&ei->extent_tree);
	FUNC6(fs_info, &ei->io_tree, IO_TREE_INODE_IO, inode);
	FUNC6(fs_info, &ei->io_failure_tree,
			    IO_TREE_INODE_IO_FAILURE, inode);
	ei->io_tree.track_uptodate = true;
	ei->io_failure_tree.track_uptodate = true;
	FUNC2(&ei->sync_writers, 0);
	FUNC10(&ei->log_mutex);
	FUNC10(&ei->delalloc_mutex);
	FUNC4(&ei->ordered_tree);
	FUNC0(&ei->delalloc_inodes);
	FUNC0(&ei->delayed_iput);
	FUNC1(&ei->rb_node);
	FUNC8(&ei->dio_sem);

	return inode;
}