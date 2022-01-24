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
typedef  int umode_t ;
struct super_block {int dummy; } ;
struct inode {unsigned int i_size; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct dir_context {unsigned int pos; } ;
struct cramfs_inode {int namelen; int mode; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 scalar_t__ CRAMFS_MAXPATHLEN ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 struct cramfs_inode* FUNC1 (struct super_block*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct cramfs_inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct dir_context*,char*,int,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read_mutex ; 

__attribute__((used)) static int FUNC10(struct file *file, struct dir_context *ctx)
{
	struct inode *inode = FUNC4(file);
	struct super_block *sb = inode->i_sb;
	char *buf;
	unsigned int offset;

	/* Offset within the thing. */
	if (ctx->pos >= inode->i_size)
		return 0;
	offset = ctx->pos;
	/* Directory entries are always 4-byte aligned */
	if (offset & 3)
		return -EINVAL;

	buf = FUNC6(CRAMFS_MAXPATHLEN, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	while (offset < inode->i_size) {
		struct cramfs_inode *de;
		unsigned long nextoffset;
		char *name;
		ino_t ino;
		umode_t mode;
		int namelen;

		FUNC8(&read_mutex);
		de = FUNC1(sb, FUNC0(inode) + offset, sizeof(*de)+CRAMFS_MAXPATHLEN);
		name = (char *)(de+1);

		/*
		 * Namelengths on disk are shifted by two
		 * and the name padded out to 4-byte boundaries
		 * with zeroes.
		 */
		namelen = de->namelen << 2;
		FUNC7(buf, name, namelen);
		ino = FUNC2(de, FUNC0(inode) + offset);
		mode = de->mode;
		FUNC9(&read_mutex);
		nextoffset = offset + sizeof(*de) + namelen;
		for (;;) {
			if (!namelen) {
				FUNC5(buf);
				return -EIO;
			}
			if (buf[namelen-1])
				break;
			namelen--;
		}
		if (!FUNC3(ctx, buf, namelen, ino, mode >> 12))
			break;

		ctx->pos = offset = nextoffset;
	}
	FUNC5(buf);
	return 0;
}