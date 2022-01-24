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
typedef  int u64 ;
struct btrfs_fs_info {int dummy; } ;
typedef  enum btrfs_feature_set { ____Placeholder_btrfs_feature_set } btrfs_feature_set ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int EPERM ; 
 char* FUNC0 (int) ; 
 char* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char) ; 

__attribute__((used)) static int FUNC5(struct btrfs_fs_info *fs_info,
			      enum btrfs_feature_set set,
			      u64 change_mask, u64 flags, u64 supported_flags,
			      u64 safe_set, u64 safe_clear)
{
	const char *type = FUNC0(set);
	char *names;
	u64 disallowed, unsupported;
	u64 set_mask = flags & change_mask;
	u64 clear_mask = ~flags & change_mask;

	unsupported = set_mask & ~supported_flags;
	if (unsupported) {
		names = FUNC1(set, unsupported);
		if (names) {
			FUNC2(fs_info,
				   "this kernel does not support the %s feature bit%s",
				   names, FUNC4(names, ',') ? "s" : "");
			FUNC3(names);
		} else
			FUNC2(fs_info,
				   "this kernel does not support %s bits 0x%llx",
				   type, unsupported);
		return -EOPNOTSUPP;
	}

	disallowed = set_mask & ~safe_set;
	if (disallowed) {
		names = FUNC1(set, disallowed);
		if (names) {
			FUNC2(fs_info,
				   "can't set the %s feature bit%s while mounted",
				   names, FUNC4(names, ',') ? "s" : "");
			FUNC3(names);
		} else
			FUNC2(fs_info,
				   "can't set %s bits 0x%llx while mounted",
				   type, disallowed);
		return -EPERM;
	}

	disallowed = clear_mask & ~safe_clear;
	if (disallowed) {
		names = FUNC1(set, disallowed);
		if (names) {
			FUNC2(fs_info,
				   "can't clear the %s feature bit%s while mounted",
				   names, FUNC4(names, ',') ? "s" : "");
			FUNC3(names);
		} else
			FUNC2(fs_info,
				   "can't clear %s bits 0x%llx while mounted",
				   type, disallowed);
		return -EPERM;
	}

	return 0;
}