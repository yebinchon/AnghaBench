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
struct inode {int i_generation; int i_blocks; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; TYPE_2__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; void* i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_sb; } ;
struct fs_info_t {int cluster_size; } ;
struct file_id_t {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  fs_gid; int /*<<< orphan*/  fs_uid; } ;
struct exfat_sb_info {TYPE_1__ options; struct fs_info_t fs_info; } ;
struct dir_entry_t {int Attr; int /*<<< orphan*/  AccessTimestamp; int /*<<< orphan*/  CreateTimestamp; int /*<<< orphan*/  ModifyTimestamp; int /*<<< orphan*/  Size; int /*<<< orphan*/  NumSubdirs; } ;
typedef  int loff_t ;
struct TYPE_6__ {int mmu_private; int /*<<< orphan*/ * target; scalar_t__ i_pos; int /*<<< orphan*/  fid; } ;
struct TYPE_5__ {scalar_t__ nrpages; int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int ATTR_SUBDIR ; 
 int ATTR_SYMLINK ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 struct exfat_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  exfat_aops ; 
 int /*<<< orphan*/  exfat_dir_inode_operations ; 
 int /*<<< orphan*/  exfat_dir_operations ; 
 int /*<<< orphan*/  exfat_file_inode_operations ; 
 int /*<<< orphan*/  exfat_file_operations ; 
 void* FUNC3 (struct exfat_sb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int) ; 
 int /*<<< orphan*/  exfat_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct dir_entry_t*) ; 
 int FUNC7 () ; 
 int FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct file_id_t*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct inode *inode, struct file_id_t *fid)
{
	struct exfat_sb_info *sbi = FUNC1(inode->i_sb);
	struct fs_info_t *p_fs = &(sbi->fs_info);
	struct dir_entry_t info;

	FUNC10(&(FUNC0(inode)->fid), fid, sizeof(struct file_id_t));

	FUNC6(inode, &info);

	FUNC0(inode)->i_pos = 0;
	FUNC0(inode)->target = NULL;
	inode->i_uid = sbi->options.fs_uid;
	inode->i_gid = sbi->options.fs_gid;
	FUNC2(inode);
	inode->i_generation = FUNC7();

	if (info.Attr & ATTR_SUBDIR) { /* directory */
		inode->i_generation &= ~1;
		inode->i_mode = FUNC3(sbi, info.Attr, 0777);
		inode->i_op = &exfat_dir_inode_operations;
		inode->i_fop = &exfat_dir_operations;

		FUNC9(inode, info.Size);
		FUNC0(inode)->mmu_private = FUNC8(inode);
		FUNC11(inode, info.NumSubdirs);
	} else if (info.Attr & ATTR_SYMLINK) { /* symbolic link */
		inode->i_generation |= 1;
		inode->i_mode = FUNC3(sbi, info.Attr, 0777);
		inode->i_op = &exfat_symlink_inode_operations;

		FUNC9(inode, info.Size);
		FUNC0(inode)->mmu_private = FUNC8(inode);
	} else { /* regular file */
		inode->i_generation |= 1;
		inode->i_mode = FUNC3(sbi, info.Attr, 0777);
		inode->i_op = &exfat_file_inode_operations;
		inode->i_fop = &exfat_file_operations;
		inode->i_mapping->a_ops = &exfat_aops;
		inode->i_mapping->nrpages = 0;

		FUNC9(inode, info.Size);
		FUNC0(inode)->mmu_private = FUNC8(inode);
	}
	FUNC4(inode, info.Attr);

	inode->i_blocks = ((FUNC8(inode) + (p_fs->cluster_size - 1))
				& ~((loff_t)p_fs->cluster_size - 1)) >> 9;

	FUNC5(&inode->i_mtime, &info.ModifyTimestamp);
	FUNC5(&inode->i_ctime, &info.CreateTimestamp);
	FUNC5(&inode->i_atime, &info.AccessTimestamp);

	return 0;
}