#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* tv_nsec; void* tv_sec; } ;
struct TYPE_6__ {void* tv_nsec; void* tv_sec; } ;
struct inode {int i_mode; int i_blocks; int /*<<< orphan*/  i_sb; void* i_size; TYPE_3__ i_ctime; TYPE_2__ i_mtime; void* i_rdev; } ;
struct erofs_sb_info {void* build_time_nsec; void* build_time; } ;
struct TYPE_5__ {int /*<<< orphan*/  compressed_blocks; int /*<<< orphan*/  rdev; int /*<<< orphan*/  raw_blkaddr; } ;
struct erofs_inode_extended {TYPE_1__ i_u; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_ctime_nsec; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_xattr_icount; } ;
struct TYPE_8__ {int /*<<< orphan*/  compressed_blocks; int /*<<< orphan*/  rdev; int /*<<< orphan*/  raw_blkaddr; } ;
struct erofs_inode_compact {TYPE_4__ i_u; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_xattr_icount; int /*<<< orphan*/  i_format; } ;
struct erofs_inode {scalar_t__ datalayout; int inode_isize; int /*<<< orphan*/  nid; void* raw_blkaddr; void* xattr_isize; } ;
typedef  int erofs_blk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFSCORRUPTED ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  EROFS_BLKSIZ ; 
 struct erofs_inode* FUNC1 (struct inode*) ; 
 scalar_t__ EROFS_INODE_DATALAYOUT_MAX ; 
#define  EROFS_INODE_LAYOUT_COMPACT 136 
#define  EROFS_INODE_LAYOUT_EXTENDED 135 
 struct erofs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int LOG_SECTORS_PER_BLOCK ; 
#define  S_IFBLK 134 
#define  S_IFCHR 133 
#define  S_IFDIR 132 
#define  S_IFIFO 131 
#define  S_IFLNK 130 
 int S_IFMT ; 
#define  S_IFREG 129 
#define  S_IFSOCK 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (unsigned int const) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,void*) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (void*) ; 
 int FUNC14 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,void*) ; 

__attribute__((used)) static int FUNC16(struct inode *inode, void *data)
{
	struct erofs_inode *vi = FUNC1(inode);
	struct erofs_inode_compact *dic = data;
	struct erofs_inode_extended *die;

	const unsigned int ifmt = FUNC10(dic->i_format);
	struct erofs_sb_info *sbi = FUNC2(inode->i_sb);
	erofs_blk_t nblks = 0;

	vi->datalayout = FUNC4(ifmt);

	if (vi->datalayout >= EROFS_INODE_DATALAYOUT_MAX) {
		FUNC3(inode->i_sb, "unsupported datalayout %u of nid %llu",
			  vi->datalayout, vi->nid);
		FUNC0(1);
		return -EOPNOTSUPP;
	}

	switch (FUNC6(ifmt)) {
	case EROFS_INODE_LAYOUT_EXTENDED:
		die = data;

		vi->inode_isize = sizeof(struct erofs_inode_extended);
		vi->xattr_isize = FUNC7(die->i_xattr_icount);

		inode->i_mode = FUNC10(die->i_mode);
		switch (inode->i_mode & S_IFMT) {
		case S_IFREG:
		case S_IFDIR:
		case S_IFLNK:
			vi->raw_blkaddr = FUNC11(die->i_u.raw_blkaddr);
			break;
		case S_IFCHR:
		case S_IFBLK:
			inode->i_rdev =
				FUNC13(FUNC11(die->i_u.rdev));
			break;
		case S_IFIFO:
		case S_IFSOCK:
			inode->i_rdev = 0;
			break;
		default:
			goto bogusimode;
		}
		FUNC9(inode, FUNC11(die->i_uid));
		FUNC8(inode, FUNC11(die->i_gid));
		FUNC15(inode, FUNC11(die->i_nlink));

		/* ns timestamp */
		inode->i_mtime.tv_sec = inode->i_ctime.tv_sec =
			FUNC12(die->i_ctime);
		inode->i_mtime.tv_nsec = inode->i_ctime.tv_nsec =
			FUNC11(die->i_ctime_nsec);

		inode->i_size = FUNC12(die->i_size);

		/* total blocks for compressed files */
		if (FUNC5(vi->datalayout))
			nblks = FUNC11(die->i_u.compressed_blocks);
		break;
	case EROFS_INODE_LAYOUT_COMPACT:
		vi->inode_isize = sizeof(struct erofs_inode_compact);
		vi->xattr_isize = FUNC7(dic->i_xattr_icount);

		inode->i_mode = FUNC10(dic->i_mode);
		switch (inode->i_mode & S_IFMT) {
		case S_IFREG:
		case S_IFDIR:
		case S_IFLNK:
			vi->raw_blkaddr = FUNC11(dic->i_u.raw_blkaddr);
			break;
		case S_IFCHR:
		case S_IFBLK:
			inode->i_rdev =
				FUNC13(FUNC11(dic->i_u.rdev));
			break;
		case S_IFIFO:
		case S_IFSOCK:
			inode->i_rdev = 0;
			break;
		default:
			goto bogusimode;
		}
		FUNC9(inode, FUNC10(dic->i_uid));
		FUNC8(inode, FUNC10(dic->i_gid));
		FUNC15(inode, FUNC10(dic->i_nlink));

		/* use build time to derive all file time */
		inode->i_mtime.tv_sec = inode->i_ctime.tv_sec =
			sbi->build_time;
		inode->i_mtime.tv_nsec = inode->i_ctime.tv_nsec =
			sbi->build_time_nsec;

		inode->i_size = FUNC11(dic->i_size);
		if (FUNC5(vi->datalayout))
			nblks = FUNC11(dic->i_u.compressed_blocks);
		break;
	default:
		FUNC3(inode->i_sb,
			  "unsupported on-disk inode version %u of nid %llu",
			  FUNC6(ifmt), vi->nid);
		FUNC0(1);
		return -EOPNOTSUPP;
	}

	if (!nblks)
		/* measure inode.i_blocks as generic filesystems */
		inode->i_blocks = FUNC14(inode->i_size, EROFS_BLKSIZ) >> 9;
	else
		inode->i_blocks = nblks << LOG_SECTORS_PER_BLOCK;
	return 0;

bogusimode:
	FUNC3(inode->i_sb, "bogus i_mode (%o) @ nid %llu",
		  inode->i_mode, vi->nid);
	FUNC0(1);
	return -EFSCORRUPTED;
}