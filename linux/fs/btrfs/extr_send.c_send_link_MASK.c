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
struct send_ctx {TYPE_1__* send_root; } ;
struct fs_path {int /*<<< orphan*/  start; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_SEND_A_PATH ; 
 int /*<<< orphan*/  BTRFS_SEND_A_PATH_LINK ; 
 int /*<<< orphan*/  BTRFS_SEND_C_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct send_ctx*,int /*<<< orphan*/ ,struct fs_path*) ; 
 int FUNC1 (struct send_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct send_ctx*) ; 

__attribute__((used)) static int FUNC4(struct send_ctx *sctx,
		     struct fs_path *path, struct fs_path *lnk)
{
	struct btrfs_fs_info *fs_info = sctx->send_root->fs_info;
	int ret;

	FUNC2(fs_info, "send_link %s -> %s", path->start, lnk->start);

	ret = FUNC1(sctx, BTRFS_SEND_C_LINK);
	if (ret < 0)
		goto out;

	FUNC0(sctx, BTRFS_SEND_A_PATH, path);
	FUNC0(sctx, BTRFS_SEND_A_PATH_LINK, lnk);

	ret = FUNC3(sctx);

tlv_put_failure:
out:
	return ret;
}