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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,int,char*,int /*<<< orphan*/ ) ; 
 struct btrfs_fs_info* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct inode *inode, int errno,
					       u64 offset)
{
	struct btrfs_fs_info *fs_info = FUNC1(inode->i_sb);
	FUNC0(fs_info, errno,
		    "Inconsistency in ordered tree at offset %llu", offset);
}