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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {int prop_compress; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int BTRFS_COMPRESS_LZO ; 
 int BTRFS_COMPRESS_NONE ; 
 int BTRFS_COMPRESS_ZLIB ; 
 int BTRFS_COMPRESS_ZSTD ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_COMPRESS ; 
 int /*<<< orphan*/  BTRFS_INODE_NOCOMPRESS ; 
 int /*<<< orphan*/  COMPRESS_LZO ; 
 int /*<<< orphan*/  COMPRESS_ZSTD ; 
 int EINVAL ; 
 struct btrfs_fs_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, const char *value,
				  size_t len)
{
	struct btrfs_fs_info *fs_info = FUNC1(inode->i_sb);
	int type;

	if (len == 0) {
		FUNC0(inode)->flags |= BTRFS_INODE_NOCOMPRESS;
		FUNC0(inode)->flags &= ~BTRFS_INODE_COMPRESS;
		FUNC0(inode)->prop_compress = BTRFS_COMPRESS_NONE;

		return 0;
	}

	if (!FUNC3("lzo", value, 3)) {
		type = BTRFS_COMPRESS_LZO;
		FUNC2(fs_info, COMPRESS_LZO);
	} else if (!FUNC3("zlib", value, 4)) {
		type = BTRFS_COMPRESS_ZLIB;
	} else if (!FUNC3("zstd", value, 4)) {
		type = BTRFS_COMPRESS_ZSTD;
		FUNC2(fs_info, COMPRESS_ZSTD);
	} else {
		return -EINVAL;
	}

	FUNC0(inode)->flags &= ~BTRFS_INODE_NOCOMPRESS;
	FUNC0(inode)->flags |= BTRFS_INODE_COMPRESS;
	FUNC0(inode)->prop_compress = type;

	return 0;
}