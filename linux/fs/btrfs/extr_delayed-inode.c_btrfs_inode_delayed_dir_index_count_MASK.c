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
struct btrfs_inode {scalar_t__ index_cnt; } ;
struct btrfs_delayed_node {scalar_t__ index_cnt; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 struct btrfs_delayed_node* FUNC0 (struct btrfs_inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_delayed_node*) ; 

int FUNC2(struct btrfs_inode *inode)
{
	struct btrfs_delayed_node *delayed_node = FUNC0(inode);

	if (!delayed_node)
		return -ENOENT;

	/*
	 * Since we have held i_mutex of this directory, it is impossible that
	 * a new directory index is added into the delayed node and index_cnt
	 * is updated now. So we needn't lock the delayed node.
	 */
	if (!delayed_node->index_cnt) {
		FUNC1(delayed_node);
		return -EINVAL;
	}

	inode->index_cnt = delayed_node->index_cnt;
	FUNC1(delayed_node);
	return 0;
}