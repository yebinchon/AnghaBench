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
typedef  int /*<<< orphan*/  u32 ;
struct send_ctx {int /*<<< orphan*/  cur_inode_gen; int /*<<< orphan*/  cur_ino; } ;
struct fs_path {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_SEND_A_FILE_OFFSET ; 
 int /*<<< orphan*/  BTRFS_SEND_A_PATH ; 
 int /*<<< orphan*/  BTRFS_SEND_A_SIZE ; 
 int /*<<< orphan*/  BTRFS_SEND_C_UPDATE_EXTENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct send_ctx*,int /*<<< orphan*/ ,struct fs_path*) ; 
 int /*<<< orphan*/  FUNC1 (struct send_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct send_ctx*,int /*<<< orphan*/ ) ; 
 struct fs_path* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct fs_path*) ; 
 int FUNC5 (struct send_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fs_path*) ; 
 int FUNC6 (struct send_ctx*) ; 

__attribute__((used)) static int FUNC7(struct send_ctx *sctx,
			      u64 offset, u32 len)
{
	int ret = 0;
	struct fs_path *p;

	p = FUNC3();
	if (!p)
		return -ENOMEM;

	ret = FUNC2(sctx, BTRFS_SEND_C_UPDATE_EXTENT);
	if (ret < 0)
		goto out;

	ret = FUNC5(sctx, sctx->cur_ino, sctx->cur_inode_gen, p);
	if (ret < 0)
		goto out;

	FUNC0(sctx, BTRFS_SEND_A_PATH, p);
	FUNC1(sctx, BTRFS_SEND_A_FILE_OFFSET, offset);
	FUNC1(sctx, BTRFS_SEND_A_SIZE, len);

	ret = FUNC6(sctx);

tlv_put_failure:
out:
	FUNC4(p);
	return ret;
}