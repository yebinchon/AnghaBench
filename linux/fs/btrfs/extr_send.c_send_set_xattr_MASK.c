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
struct send_ctx {int dummy; } ;
struct fs_path {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_SEND_A_PATH ; 
 int /*<<< orphan*/  BTRFS_SEND_A_XATTR_DATA ; 
 int /*<<< orphan*/  BTRFS_SEND_A_XATTR_NAME ; 
 int /*<<< orphan*/  BTRFS_SEND_C_SET_XATTR ; 
 int /*<<< orphan*/  FUNC0 (struct send_ctx*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct send_ctx*,int /*<<< orphan*/ ,struct fs_path*) ; 
 int /*<<< orphan*/  FUNC2 (struct send_ctx*,int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC3 (struct send_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct send_ctx*) ; 

__attribute__((used)) static int FUNC5(struct send_ctx *sctx,
			  struct fs_path *path,
			  const char *name, int name_len,
			  const char *data, int data_len)
{
	int ret = 0;

	ret = FUNC3(sctx, BTRFS_SEND_C_SET_XATTR);
	if (ret < 0)
		goto out;

	FUNC1(sctx, BTRFS_SEND_A_PATH, path);
	FUNC2(sctx, BTRFS_SEND_A_XATTR_NAME, name, name_len);
	FUNC0(sctx, BTRFS_SEND_A_XATTR_DATA, data, data_len);

	ret = FUNC4(sctx);

tlv_put_failure:
out:
	return ret;
}