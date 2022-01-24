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
typedef  scalar_t__ u64 ;
struct fs_path {int dummy; } ;
struct btrfs_root {int dummy; } ;

/* Variables and functions */
 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ; 
 int /*<<< orphan*/  FUNC0 (struct fs_path*) ; 
 int FUNC1 (struct btrfs_root*,scalar_t__,scalar_t__*,scalar_t__*,struct fs_path*) ; 

__attribute__((used)) static int FUNC2(struct btrfs_root *root,
			     const u64 ino1,
			     const u64 ino1_gen,
			     const u64 ino2,
			     const u64 ino2_gen,
			     struct fs_path *fs_path)
{
	u64 ino = ino2;

	if (ino1 == ino2)
		return ino1_gen == ino2_gen;

	while (ino > BTRFS_FIRST_FREE_OBJECTID) {
		u64 parent;
		u64 parent_gen;
		int ret;

		FUNC0(fs_path);
		ret = FUNC1(root, ino, &parent, &parent_gen, fs_path);
		if (ret < 0)
			return ret;
		if (parent == ino1)
			return parent_gen == ino1_gen;
		ino = parent;
	}
	return 0;
}