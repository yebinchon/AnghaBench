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
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  transaction_kthread; int /*<<< orphan*/  super_lock; TYPE_1__* super_copy; int /*<<< orphan*/  sb; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  label; } ;

/* Variables and functions */
 size_t BTRFS_LABEL_SIZE ; 
 int /*<<< orphan*/  COMMIT ; 
 size_t EINVAL ; 
 size_t EPERM ; 
 size_t EROFS ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (char const*,char*) ; 
 struct btrfs_fs_info* FUNC7 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC9(struct kobject *kobj,
				 struct kobj_attribute *a,
				 const char *buf, size_t len)
{
	struct btrfs_fs_info *fs_info = FUNC7(kobj);
	size_t p_len;

	if (!fs_info)
		return -EPERM;

	if (FUNC3(fs_info->sb))
		return -EROFS;

	/*
	 * p_len is the len until the first occurrence of either
	 * '\n' or '\0'
	 */
	p_len = FUNC6(buf, "\n");

	if (p_len >= BTRFS_LABEL_SIZE)
		return -EINVAL;

	FUNC4(&fs_info->super_lock);
	FUNC2(fs_info->super_copy->label, 0, BTRFS_LABEL_SIZE);
	FUNC1(fs_info->super_copy->label, buf, p_len);
	FUNC5(&fs_info->super_lock);

	/*
	 * We don't want to do full transaction commit from inside sysfs
	 */
	FUNC0(fs_info, COMMIT);
	FUNC8(fs_info->transaction_kthread);

	return len;
}