#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_10__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_9__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_8__ {void* tv_nsec; void* tv_sec; } ;
struct inode {int /*<<< orphan*/  i_generation; TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; scalar_t__ i_rdev; int /*<<< orphan*/  i_mode; } ;
struct btrfs_inode_item {int /*<<< orphan*/  otime; int /*<<< orphan*/  ctime; int /*<<< orphan*/  mtime; int /*<<< orphan*/  atime; } ;
struct btrfs_delayed_node {int /*<<< orphan*/  mutex; struct btrfs_inode_item inode_item; int /*<<< orphan*/  flags; } ;
struct TYPE_11__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_12__ {scalar_t__ index_cnt; int /*<<< orphan*/  generation; TYPE_4__ i_otime; int /*<<< orphan*/  flags; int /*<<< orphan*/  last_trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_DELAYED_NODE_INODE_DIRTY ; 
 TYPE_5__* FUNC0 (struct inode*) ; 
 int ENOENT ; 
 struct btrfs_delayed_node* FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_delayed_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_inode_item*) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_inode_item*) ; 
 void* FUNC15 (int /*<<< orphan*/ *) ; 
 void* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC25(struct inode *inode, u32 *rdev)
{
	struct btrfs_delayed_node *delayed_node;
	struct btrfs_inode_item *inode_item;

	delayed_node = FUNC1(FUNC0(inode));
	if (!delayed_node)
		return -ENOENT;

	FUNC21(&delayed_node->mutex);
	if (!FUNC24(BTRFS_DELAYED_NODE_INODE_DIRTY, &delayed_node->flags)) {
		FUNC22(&delayed_node->mutex);
		FUNC3(delayed_node);
		return -ENOENT;
	}

	inode_item = &delayed_node->inode_item;

	FUNC18(inode, FUNC14(inode_item));
	FUNC17(inode, FUNC6(inode_item));
	FUNC2(FUNC0(inode), FUNC12(inode_item));
	inode->i_mode = FUNC7(inode_item);
	FUNC23(inode, FUNC9(inode_item));
	FUNC19(inode, FUNC8(inode_item));
	FUNC0(inode)->generation = FUNC5(inode_item);
        FUNC0(inode)->last_trans = FUNC13(inode_item);

	FUNC20(inode,
				   FUNC11(inode_item));
	inode->i_rdev = 0;
	*rdev = FUNC10(inode_item);
	FUNC0(inode)->flags = FUNC4(inode_item);

	inode->i_atime.tv_sec = FUNC16(&inode_item->atime);
	inode->i_atime.tv_nsec = FUNC15(&inode_item->atime);

	inode->i_mtime.tv_sec = FUNC16(&inode_item->mtime);
	inode->i_mtime.tv_nsec = FUNC15(&inode_item->mtime);

	inode->i_ctime.tv_sec = FUNC16(&inode_item->ctime);
	inode->i_ctime.tv_nsec = FUNC15(&inode_item->ctime);

	FUNC0(inode)->i_otime.tv_sec =
		FUNC16(&inode_item->otime);
	FUNC0(inode)->i_otime.tv_nsec =
		FUNC15(&inode_item->otime);

	inode->i_generation = FUNC0(inode)->generation;
	FUNC0(inode)->index_cnt = (u64)-1;

	FUNC22(&delayed_node->mutex);
	FUNC3(delayed_node);
	return 0;
}