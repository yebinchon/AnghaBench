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
typedef  int u64 ;
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  transaction_kthread; int /*<<< orphan*/  super_lock; int /*<<< orphan*/  sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct btrfs_feature_attr {scalar_t__ feature_set; int feature_bit; TYPE_2__ kobj_attr; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int BTRFS_FEATURE_COMPAT_RO_SAFE_CLEAR ; 
 int BTRFS_FEATURE_COMPAT_RO_SAFE_SET ; 
 int BTRFS_FEATURE_COMPAT_SAFE_CLEAR ; 
 int BTRFS_FEATURE_COMPAT_SAFE_SET ; 
 int BTRFS_FEATURE_INCOMPAT_SAFE_CLEAR ; 
 int BTRFS_FEATURE_INCOMPAT_SAFE_SET ; 
 int /*<<< orphan*/  COMMIT ; 
 int EPERM ; 
 int EROFS ; 
 scalar_t__ FEAT_COMPAT ; 
 scalar_t__ FEAT_COMPAT_RO ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct btrfs_fs_info*,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_fs_info*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct btrfs_feature_attr* FUNC9 (struct kobj_attribute*) ; 
 struct btrfs_fs_info* FUNC10 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC12(struct kobject *kobj,
					struct kobj_attribute *a,
					const char *buf, size_t count)
{
	struct btrfs_fs_info *fs_info;
	struct btrfs_feature_attr *fa = FUNC9(a);
	u64 features, set, clear;
	unsigned long val;
	int ret;

	fs_info = FUNC10(kobj);
	if (!fs_info)
		return -EPERM;

	if (FUNC4(fs_info->sb))
		return -EROFS;

	ret = FUNC3(FUNC6(buf), 0, &val);
	if (ret)
		return ret;

	if (fa->feature_set == FEAT_COMPAT) {
		set = BTRFS_FEATURE_COMPAT_SAFE_SET;
		clear = BTRFS_FEATURE_COMPAT_SAFE_CLEAR;
	} else if (fa->feature_set == FEAT_COMPAT_RO) {
		set = BTRFS_FEATURE_COMPAT_RO_SAFE_SET;
		clear = BTRFS_FEATURE_COMPAT_RO_SAFE_CLEAR;
	} else {
		set = BTRFS_FEATURE_INCOMPAT_SAFE_SET;
		clear = BTRFS_FEATURE_INCOMPAT_SAFE_CLEAR;
	}

	features = FUNC2(fs_info, fa->feature_set);

	/* Nothing to do */
	if ((val && (features & fa->feature_bit)) ||
	    (!val && !(features & fa->feature_bit)))
		return count;

	if ((val && !(set & fa->feature_bit)) ||
	    (!val && !(clear & fa->feature_bit))) {
		FUNC0(fs_info,
			"%sabling feature %s on mounted fs is not supported.",
			val ? "En" : "Dis", fa->kobj_attr.attr.name);
		return -EPERM;
	}

	FUNC0(fs_info, "%s %s feature flag",
		   val ? "Setting" : "Clearing", fa->kobj_attr.attr.name);

	FUNC7(&fs_info->super_lock);
	features = FUNC2(fs_info, fa->feature_set);
	if (val)
		features |= fa->feature_bit;
	else
		features &= ~fa->feature_bit;
	FUNC5(fs_info, fa->feature_set, features);
	FUNC8(&fs_info->super_lock);

	/*
	 * We don't want to do full transaction commit from inside sysfs
	 */
	FUNC1(fs_info, COMMIT);
	FUNC11(fs_info->transaction_kthread);

	return count;
}