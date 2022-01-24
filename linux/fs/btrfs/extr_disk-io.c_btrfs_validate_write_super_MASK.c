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
struct btrfs_super_block {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_CSUM_TYPE_CRC32 ; 
 int BTRFS_FEATURE_INCOMPAT_SUPP ; 
 int EUCLEAN ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_super_block*) ; 
 int FUNC2 (struct btrfs_super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct btrfs_fs_info*,struct btrfs_super_block*,int) ; 

__attribute__((used)) static int FUNC5(struct btrfs_fs_info *fs_info,
				      struct btrfs_super_block *sb)
{
	int ret;

	ret = FUNC4(fs_info, sb, -1);
	if (ret < 0)
		goto out;
	if (!FUNC3(FUNC1(sb))) {
		ret = -EUCLEAN;
		FUNC0(fs_info, "invalid csum type, has %u want %u",
			  FUNC1(sb), BTRFS_CSUM_TYPE_CRC32);
		goto out;
	}
	if (FUNC2(sb) & ~BTRFS_FEATURE_INCOMPAT_SUPP) {
		ret = -EUCLEAN;
		FUNC0(fs_info,
		"invalid incompat flags, has 0x%llx valid mask 0x%llx",
			  FUNC2(sb),
			  (unsigned long long)BTRFS_FEATURE_INCOMPAT_SUPP);
		goto out;
	}
out:
	if (ret < 0)
		FUNC0(fs_info,
		"super block corruption detected before writing it to disk");
	return ret;
}