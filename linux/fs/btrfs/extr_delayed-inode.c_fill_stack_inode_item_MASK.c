#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_7__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_6__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_mode; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  transid; } ;
struct btrfs_inode_item {int /*<<< orphan*/  otime; int /*<<< orphan*/  ctime; int /*<<< orphan*/  mtime; int /*<<< orphan*/  atime; } ;
struct TYPE_9__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_10__ {TYPE_4__ i_otime; int /*<<< orphan*/  flags; int /*<<< orphan*/  generation; int /*<<< orphan*/  disk_i_size; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_inode_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 

__attribute__((used)) static void FUNC19(struct btrfs_trans_handle *trans,
				  struct btrfs_inode_item *inode_item,
				  struct inode *inode)
{
	FUNC12(inode_item, FUNC16(inode));
	FUNC4(inode_item, FUNC15(inode));
	FUNC10(inode_item, FUNC0(inode)->disk_i_size);
	FUNC5(inode_item, inode->i_mode);
	FUNC7(inode_item, inode->i_nlink);
	FUNC6(inode_item, FUNC17(inode));
	FUNC3(inode_item,
					 FUNC0(inode)->generation);
	FUNC9(inode_item,
				       FUNC18(inode));
	FUNC11(inode_item, trans->transid);
	FUNC8(inode_item, inode->i_rdev);
	FUNC2(inode_item, FUNC0(inode)->flags);
	FUNC1(inode_item, 0);

	FUNC14(&inode_item->atime,
				     inode->i_atime.tv_sec);
	FUNC13(&inode_item->atime,
				      inode->i_atime.tv_nsec);

	FUNC14(&inode_item->mtime,
				     inode->i_mtime.tv_sec);
	FUNC13(&inode_item->mtime,
				      inode->i_mtime.tv_nsec);

	FUNC14(&inode_item->ctime,
				     inode->i_ctime.tv_sec);
	FUNC13(&inode_item->ctime,
				      inode->i_ctime.tv_nsec);

	FUNC14(&inode_item->otime,
				     FUNC0(inode)->i_otime.tv_sec);
	FUNC13(&inode_item->otime,
				     FUNC0(inode)->i_otime.tv_nsec);
}