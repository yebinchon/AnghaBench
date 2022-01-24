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
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct btrfs_root*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct btrfs_path* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_path*) ; 

__attribute__((used)) static int FUNC3(struct btrfs_root *root,
			  u64 ino, u64 *size, u64 *gen,
			  u64 *mode, u64 *uid, u64 *gid,
			  u64 *rdev)
{
	struct btrfs_path *path;
	int ret;

	path = FUNC1();
	if (!path)
		return -ENOMEM;
	ret = FUNC0(root, path, ino, size, gen, mode, uid, gid,
			       rdev);
	FUNC2(path);
	return ret;
}