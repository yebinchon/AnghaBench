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
struct rb_node {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct btrfs_root {int /*<<< orphan*/  ordered_extent_lock; int /*<<< orphan*/  ordered_root; int /*<<< orphan*/  nr_ordered_extents; } ;
struct btrfs_ordered_inode_tree {int /*<<< orphan*/  lock; struct rb_node* last; int /*<<< orphan*/  tree; } ;
struct btrfs_ordered_extent {int /*<<< orphan*/  wait; int /*<<< orphan*/  root_extent_list; int /*<<< orphan*/  flags; struct rb_node rb_node; int /*<<< orphan*/  len; } ;
struct btrfs_inode {struct btrfs_ordered_inode_tree ordered_tree; int /*<<< orphan*/  lock; struct btrfs_root* root; } ;
struct btrfs_fs_info {int /*<<< orphan*/  ordered_root_lock; int /*<<< orphan*/  delalloc_batch; int /*<<< orphan*/  dio_bytes; struct btrfs_root* tree_root; } ;

/* Variables and functions */
 struct btrfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_ORDERED_COMPLETE ; 
 int /*<<< orphan*/  BTRFS_ORDERED_DIRECT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_inode*,int) ; 
 struct btrfs_fs_info* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rb_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,struct btrfs_ordered_extent*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

void FUNC18(struct inode *inode,
				 struct btrfs_ordered_extent *entry)
{
	struct btrfs_fs_info *fs_info = FUNC5(inode->i_sb);
	struct btrfs_ordered_inode_tree *tree;
	struct btrfs_inode *btrfs_inode = FUNC0(inode);
	struct btrfs_root *root = btrfs_inode->root;
	struct rb_node *node;

	/* This is paired with btrfs_add_ordered_extent. */
	FUNC11(&btrfs_inode->lock);
	FUNC4(btrfs_inode, -1);
	FUNC13(&btrfs_inode->lock);
	if (root != fs_info->tree_root)
		FUNC3(btrfs_inode, entry->len, false);

	if (FUNC15(BTRFS_ORDERED_DIRECT, &entry->flags))
		FUNC8(&fs_info->dio_bytes, -entry->len,
					 fs_info->delalloc_batch);

	tree = &btrfs_inode->ordered_tree;
	FUNC12(&tree->lock);
	node = &entry->rb_node;
	FUNC9(node, &tree->tree);
	FUNC2(node);
	if (tree->last == node)
		tree->last = NULL;
	FUNC10(BTRFS_ORDERED_COMPLETE, &entry->flags);
	FUNC14(&tree->lock);

	FUNC11(&root->ordered_extent_lock);
	FUNC6(&entry->root_extent_list);
	root->nr_ordered_extents--;

	FUNC16(inode, entry);

	if (!root->nr_ordered_extents) {
		FUNC11(&fs_info->ordered_root_lock);
		FUNC1(FUNC7(&root->ordered_root));
		FUNC6(&root->ordered_root);
		FUNC13(&fs_info->ordered_root_lock);
	}
	FUNC13(&root->ordered_extent_lock);
	FUNC17(&entry->wait);
}