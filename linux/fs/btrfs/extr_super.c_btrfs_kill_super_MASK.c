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
struct super_block {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 struct btrfs_fs_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 

__attribute__((used)) static void FUNC3(struct super_block *sb)
{
	struct btrfs_fs_info *fs_info = FUNC0(sb);
	FUNC2(sb);
	FUNC1(fs_info);
}