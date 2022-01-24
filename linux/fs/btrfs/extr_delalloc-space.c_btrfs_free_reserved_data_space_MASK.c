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
struct inode {int dummy; } ;
struct extent_changeset {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_4__ {struct btrfs_root* root; } ;
struct TYPE_3__ {int /*<<< orphan*/  sectorsize; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct extent_changeset*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC5(struct inode *inode,
			struct extent_changeset *reserved, u64 start, u64 len)
{
	struct btrfs_root *root = FUNC0(inode)->root;

	/* Make sure the range is aligned to sectorsize */
	len = FUNC4(start + len, root->fs_info->sectorsize) -
	      FUNC3(start, root->fs_info->sectorsize);
	start = FUNC3(start, root->fs_info->sectorsize);

	FUNC1(inode, start, len);
	FUNC2(inode, reserved, start, len);
}