#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct extent_map {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_key {int /*<<< orphan*/  offset; int /*<<< orphan*/  objectid; } ;
struct btrfs_fs_info {int /*<<< orphan*/  sectorsize; } ;
struct TYPE_2__ {struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_ORDERED_REGULAR ; 
 struct extent_map* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct extent_map*) ; 
 struct extent_map* FUNC3 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct btrfs_key*,int,int) ; 
 struct btrfs_fs_info* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct extent_map *FUNC9(struct inode *inode,
						  u64 start, u64 len)
{
	struct btrfs_fs_info *fs_info = FUNC7(inode->i_sb);
	struct btrfs_root *root = FUNC0(inode)->root;
	struct extent_map *em;
	struct btrfs_key ins;
	u64 alloc_hint;
	int ret;

	alloc_hint = FUNC8(inode, start, len);
	ret = FUNC6(root, len, len, fs_info->sectorsize,
				   0, alloc_hint, &ins, 1, 1);
	if (ret)
		return FUNC1(ret);

	em = FUNC3(inode, start, ins.offset, start,
				     ins.objectid, ins.offset, ins.offset,
				     ins.offset, BTRFS_ORDERED_REGULAR);
	FUNC4(fs_info, ins.objectid);
	if (FUNC2(em))
		FUNC5(fs_info, ins.objectid,
					   ins.offset, 1);

	return em;
}