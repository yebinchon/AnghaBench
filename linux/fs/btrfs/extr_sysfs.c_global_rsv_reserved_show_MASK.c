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
struct kobject {int /*<<< orphan*/  parent; } ;
struct kobj_attribute {int dummy; } ;
struct btrfs_block_rsv {int /*<<< orphan*/  lock; int /*<<< orphan*/  reserved; } ;
struct btrfs_fs_info {struct btrfs_block_rsv global_block_rsv; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 struct btrfs_fs_info* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC2(struct kobject *kobj,
					struct kobj_attribute *a, char *buf)
{
	struct btrfs_fs_info *fs_info = FUNC1(kobj->parent);
	struct btrfs_block_rsv *block_rsv = &fs_info->global_block_rsv;
	return FUNC0(&block_rsv->reserved, &block_rsv->lock, buf);
}