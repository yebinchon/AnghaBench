#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int umode_t ;
struct v9fs_session_info {int /*<<< orphan*/  dfltgid; int /*<<< orphan*/  dfltuid; } ;
struct v9fs_inode {int /*<<< orphan*/  cache_validity; } ;
struct super_block {struct v9fs_session_info* s_fs_info; } ;
struct p9_wstat {char* extension; int length; int /*<<< orphan*/  n_gid; int /*<<< orphan*/  n_uid; int /*<<< orphan*/  mtime; int /*<<< orphan*/  atime; } ;
struct TYPE_6__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_5__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_4__ {int /*<<< orphan*/  tv_sec; } ;
struct inode {int i_mode; int i_blocks; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; } ;
typedef  int /*<<< orphan*/  ext ;

/* Variables and functions */
 int S_IALLUGO ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 struct v9fs_inode* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  V9FS_INO_INVALID_ATTR ; 
 unsigned int V9FS_STAT2INODE_KEEP_ISIZE ; 
 int FUNC3 (struct v9fs_session_info*,struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int) ; 
 scalar_t__ FUNC9 (struct v9fs_session_info*) ; 

void
FUNC10(struct p9_wstat *stat, struct inode *inode,
		 struct super_block *sb, unsigned int flags)
{
	umode_t mode;
	char ext[32];
	char tag_name[14];
	unsigned int i_nlink;
	struct v9fs_session_info *v9ses = sb->s_fs_info;
	struct v9fs_inode *v9inode = FUNC2(inode);

	FUNC4(inode, 1);

	inode->i_atime.tv_sec = stat->atime;
	inode->i_mtime.tv_sec = stat->mtime;
	inode->i_ctime.tv_sec = stat->mtime;

	inode->i_uid = v9ses->dfltuid;
	inode->i_gid = v9ses->dfltgid;

	if (FUNC9(v9ses)) {
		inode->i_uid = stat->n_uid;
		inode->i_gid = stat->n_gid;
	}
	if ((FUNC1(inode->i_mode)) || (FUNC0(inode->i_mode))) {
		if (FUNC9(v9ses) && (stat->extension[0] != '\0')) {
			/*
			 * Hadlink support got added later to
			 * to the .u extension. So there can be
			 * server out there that doesn't support
			 * this even with .u extension. So check
			 * for non NULL stat->extension
			 */
			FUNC6(ext, stat->extension, sizeof(ext));
			/* HARDLINKCOUNT %u */
			FUNC5(ext, "%13s %u", tag_name, &i_nlink);
			if (!FUNC7(tag_name, "HARDLINKCOUNT", 13))
				FUNC4(inode, i_nlink);
		}
	}
	mode = FUNC3(v9ses, stat);
	mode |= inode->i_mode & ~S_IALLUGO;
	inode->i_mode = mode;

	if (!(flags & V9FS_STAT2INODE_KEEP_ISIZE))
		FUNC8(inode, stat->length);
	/* not real number of blocks, but 512 byte ones ... */
	inode->i_blocks = (stat->length + 512 - 1) >> 9;
	v9inode->cache_validity &= ~V9FS_INO_INVALID_ATTR;
}