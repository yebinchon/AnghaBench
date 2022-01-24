#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_7__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_6__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_5__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int /*<<< orphan*/  i_rdev; TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_size; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  transid; } ;
struct btrfs_map_token {int dummy; } ;
struct btrfs_inode_item {int /*<<< orphan*/  ctime; int /*<<< orphan*/  mtime; int /*<<< orphan*/  atime; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  generation; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_map_token*,struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ,struct btrfs_map_token*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ,struct btrfs_map_token*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ,struct btrfs_map_token*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ,struct btrfs_map_token*) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ,struct btrfs_map_token*) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ,struct btrfs_map_token*) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ,struct btrfs_map_token*) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ,struct btrfs_map_token*) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ,struct btrfs_map_token*) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ,struct btrfs_map_token*) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ,struct btrfs_map_token*) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*,struct btrfs_inode_item*,int /*<<< orphan*/ ,struct btrfs_map_token*) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct btrfs_map_token*) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct btrfs_map_token*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 

__attribute__((used)) static void FUNC20(struct btrfs_trans_handle *trans,
			    struct extent_buffer *leaf,
			    struct btrfs_inode_item *item,
			    struct inode *inode, int log_inode_only,
			    u64 logged_isize)
{
	struct btrfs_map_token token;

	FUNC1(&token, leaf);

	if (log_inode_only) {
		/* set the generation to zero so the recover code
		 * can tell the difference between an logging
		 * just to say 'this inode exists' and a logging
		 * to say 'update this inode with these values'
		 */
		FUNC4(leaf, item, 0, &token);
		FUNC11(leaf, item, logged_isize, &token);
	} else {
		FUNC4(leaf, item,
						 FUNC0(inode)->generation,
						 &token);
		FUNC11(leaf, item, inode->i_size, &token);
	}

	FUNC13(leaf, item, FUNC17(inode), &token);
	FUNC5(leaf, item, FUNC16(inode), &token);
	FUNC6(leaf, item, inode->i_mode, &token);
	FUNC8(leaf, item, inode->i_nlink, &token);

	FUNC15(leaf, &item->atime,
				     inode->i_atime.tv_sec, &token);
	FUNC14(leaf, &item->atime,
				      inode->i_atime.tv_nsec, &token);

	FUNC15(leaf, &item->mtime,
				     inode->i_mtime.tv_sec, &token);
	FUNC14(leaf, &item->mtime,
				      inode->i_mtime.tv_nsec, &token);

	FUNC15(leaf, &item->ctime,
				     inode->i_ctime.tv_sec, &token);
	FUNC14(leaf, &item->ctime,
				      inode->i_ctime.tv_nsec, &token);

	FUNC7(leaf, item, FUNC18(inode),
				     &token);

	FUNC10(leaf, item,
				       FUNC19(inode), &token);
	FUNC12(leaf, item, trans->transid, &token);
	FUNC9(leaf, item, inode->i_rdev, &token);
	FUNC3(leaf, item, FUNC0(inode)->flags, &token);
	FUNC2(leaf, item, 0, &token);
}