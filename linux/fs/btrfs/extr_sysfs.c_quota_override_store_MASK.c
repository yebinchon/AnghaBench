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
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  flags; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_QUOTA_OVERRIDE ; 
 int /*<<< orphan*/  CAP_SYS_RESOURCE ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct btrfs_fs_info* FUNC4 (struct kobject*) ; 

__attribute__((used)) static ssize_t FUNC5(struct kobject *kobj,
				    struct kobj_attribute *a,
				    const char *buf, size_t len)
{
	struct btrfs_fs_info *fs_info = FUNC4(kobj);
	unsigned long knob;
	int err;

	if (!fs_info)
		return -EPERM;

	if (!FUNC0(CAP_SYS_RESOURCE))
		return -EPERM;

	err = FUNC2(buf, 10, &knob);
	if (err)
		return err;
	if (knob > 1)
		return -EINVAL;

	if (knob)
		FUNC3(BTRFS_FS_QUOTA_OVERRIDE, &fs_info->flags);
	else
		FUNC1(BTRFS_FS_QUOTA_OVERRIDE, &fs_info->flags);

	return len;
}