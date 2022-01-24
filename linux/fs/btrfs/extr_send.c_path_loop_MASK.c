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
struct send_ctx {int /*<<< orphan*/  parent_root; } ;
struct fs_path {int dummy; } ;

/* Variables and functions */
 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ; 
 int FUNC0 (struct send_ctx*,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,struct fs_path*) ; 
 int /*<<< orphan*/  FUNC1 (struct fs_path*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__*,struct fs_path*) ; 
 scalar_t__ FUNC3 (struct send_ctx*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct send_ctx*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct send_ctx *sctx, struct fs_path *name,
		     u64 ino, u64 gen, u64 *ancestor_ino)
{
	int ret = 0;
	u64 parent_inode = 0;
	u64 parent_gen = 0;
	u64 start_ino = ino;

	*ancestor_ino = 0;
	while (ino != BTRFS_FIRST_FREE_OBJECTID) {
		FUNC1(name);

		if (FUNC4(sctx, ino))
			break;
		if (FUNC3(sctx, ino)) {
			if (*ancestor_ino == 0)
				*ancestor_ino = ino;
			ret = FUNC2(sctx->parent_root, ino,
					    &parent_inode, &parent_gen, name);
		} else {
			ret = FUNC0(sctx, ino, gen,
							&parent_inode,
							&parent_gen, name);
			if (ret > 0) {
				ret = 0;
				break;
			}
		}
		if (ret < 0)
			break;
		if (parent_inode == start_ino) {
			ret = 1;
			if (*ancestor_ino == 0)
				*ancestor_ino = ino;
			break;
		}
		ino = parent_inode;
		gen = parent_gen;
	}
	return ret;
}