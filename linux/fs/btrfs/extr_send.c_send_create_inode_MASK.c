#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct send_ctx {int cur_ino; int cur_inode_gen; int cur_inode_mode; int cur_inode_rdev; TYPE_1__* send_root; } ;
struct fs_path {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_3__ {struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_SEND_A_INO ; 
 int /*<<< orphan*/  BTRFS_SEND_A_MODE ; 
 int /*<<< orphan*/  BTRFS_SEND_A_PATH ; 
 int /*<<< orphan*/  BTRFS_SEND_A_PATH_LINK ; 
 int /*<<< orphan*/  BTRFS_SEND_A_RDEV ; 
 int BTRFS_SEND_C_MKDIR ; 
 int BTRFS_SEND_C_MKFIFO ; 
 int BTRFS_SEND_C_MKFILE ; 
 int BTRFS_SEND_C_MKNOD ; 
 int BTRFS_SEND_C_MKSOCK ; 
 int BTRFS_SEND_C_SYMLINK ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int S_IFMT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct send_ctx*,int /*<<< orphan*/ ,struct fs_path*) ; 
 int /*<<< orphan*/  FUNC8 (struct send_ctx*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct send_ctx*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_fs_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_fs_info*,char*,int) ; 
 struct fs_path* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct fs_path*) ; 
 int /*<<< orphan*/  FUNC14 (struct fs_path*) ; 
 int FUNC15 (struct send_ctx*,int,int,struct fs_path*) ; 
 int FUNC16 (TYPE_1__*,int,int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC17 (int) ; 
 int FUNC18 (TYPE_1__*,int,struct fs_path*) ; 
 int FUNC19 (struct send_ctx*) ; 

__attribute__((used)) static int FUNC20(struct send_ctx *sctx, u64 ino)
{
	struct btrfs_fs_info *fs_info = sctx->send_root->fs_info;
	int ret = 0;
	struct fs_path *p;
	int cmd;
	u64 gen;
	u64 mode;
	u64 rdev;

	FUNC10(fs_info, "send_create_inode %llu", ino);

	p = FUNC12();
	if (!p)
		return -ENOMEM;

	if (ino != sctx->cur_ino) {
		ret = FUNC16(sctx->send_root, ino, NULL, &gen, &mode,
				     NULL, NULL, &rdev);
		if (ret < 0)
			goto out;
	} else {
		gen = sctx->cur_inode_gen;
		mode = sctx->cur_inode_mode;
		rdev = sctx->cur_inode_rdev;
	}

	if (FUNC5(mode)) {
		cmd = BTRFS_SEND_C_MKFILE;
	} else if (FUNC2(mode)) {
		cmd = BTRFS_SEND_C_MKDIR;
	} else if (FUNC4(mode)) {
		cmd = BTRFS_SEND_C_SYMLINK;
	} else if (FUNC1(mode) || FUNC0(mode)) {
		cmd = BTRFS_SEND_C_MKNOD;
	} else if (FUNC3(mode)) {
		cmd = BTRFS_SEND_C_MKFIFO;
	} else if (FUNC6(mode)) {
		cmd = BTRFS_SEND_C_MKSOCK;
	} else {
		FUNC11(sctx->send_root->fs_info, "unexpected inode type %o",
				(int)(mode & S_IFMT));
		ret = -EOPNOTSUPP;
		goto out;
	}

	ret = FUNC9(sctx, cmd);
	if (ret < 0)
		goto out;

	ret = FUNC15(sctx, ino, gen, p);
	if (ret < 0)
		goto out;

	FUNC7(sctx, BTRFS_SEND_A_PATH, p);
	FUNC8(sctx, BTRFS_SEND_A_INO, ino);

	if (FUNC4(mode)) {
		FUNC14(p);
		ret = FUNC18(sctx->send_root, ino, p);
		if (ret < 0)
			goto out;
		FUNC7(sctx, BTRFS_SEND_A_PATH_LINK, p);
	} else if (FUNC1(mode) || FUNC0(mode) ||
		   FUNC3(mode) || FUNC6(mode)) {
		FUNC8(sctx, BTRFS_SEND_A_RDEV, FUNC17(rdev));
		FUNC8(sctx, BTRFS_SEND_A_MODE, mode);
	}

	ret = FUNC19(sctx);
	if (ret < 0)
		goto out;


tlv_put_failure:
out:
	FUNC13(p);
	return ret;
}