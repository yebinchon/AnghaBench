#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_5__ {int nrpages; } ;
struct inode {TYPE_1__ i_data; int /*<<< orphan*/  i_dentry; int /*<<< orphan*/  i_sb; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_ordered_extent {int /*<<< orphan*/  len; int /*<<< orphan*/  file_offset; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_6__ {int reserved; int size; } ;
struct TYPE_7__ {int outstanding_extents; int delalloc_bytes; int new_delalloc_bytes; int csum_bytes; int defrag_bytes; TYPE_2__ block_rsv; struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btrfs_ordered_extent* FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_ordered_extent*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct btrfs_ordered_extent*) ; 
 struct btrfs_fs_info* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 

void FUNC11(struct inode *inode)
{
	struct btrfs_fs_info *fs_info = FUNC8(inode->i_sb);
	struct btrfs_ordered_extent *ordered;
	struct btrfs_root *root = FUNC0(inode)->root;

	FUNC1(!FUNC9(&inode->i_dentry));
	FUNC1(inode->i_data.nrpages);
	FUNC1(FUNC0(inode)->block_rsv.reserved);
	FUNC1(FUNC0(inode)->block_rsv.size);
	FUNC1(FUNC0(inode)->outstanding_extents);
	FUNC1(FUNC0(inode)->delalloc_bytes);
	FUNC1(FUNC0(inode)->new_delalloc_bytes);
	FUNC1(FUNC0(inode)->csum_bytes);
	FUNC1(FUNC0(inode)->defrag_bytes);

	/*
	 * This can happen where we create an inode, but somebody else also
	 * created the same inode and we need to destroy the one we already
	 * created.
	 */
	if (!root)
		return;

	while (1) {
		ordered = FUNC4(inode, (u64)-1);
		if (!ordered)
			break;
		else {
			FUNC3(fs_info,
				  "found ordered extent %llu %llu on inode cleanup",
				  ordered->file_offset, ordered->len);
			FUNC7(inode, ordered);
			FUNC5(ordered);
			FUNC5(ordered);
		}
	}
	FUNC6(inode);
	FUNC10(inode);
	FUNC2(FUNC0(inode), 0, (u64)-1, 0);
}