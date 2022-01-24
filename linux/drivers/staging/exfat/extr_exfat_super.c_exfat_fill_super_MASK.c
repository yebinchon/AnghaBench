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
struct super_block {int s_maxbytes; struct exfat_sb_info* s_fs_info; int /*<<< orphan*/  s_root; int /*<<< orphan*/ * s_export_op; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_flags; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct TYPE_5__ {int codepage; char* iocharset; } ;
struct TYPE_4__ {scalar_t__ vol_type; } ;
struct exfat_sb_info {TYPE_2__ options; void* nls_io; void* nls_disk; TYPE_1__ fs_info; int /*<<< orphan*/  s_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_pos; } ;

/* Variables and functions */
 long EINVAL ; 
 long EIO ; 
 int ENOMEM ; 
 scalar_t__ EXFAT ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXFAT_ROOT_INO ; 
 int /*<<< orphan*/  EXFAT_SUPER_MAGIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SB_NODIRATIME ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exfat_export_ops ; 
 int /*<<< orphan*/  FUNC4 (struct exfat_sb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 long FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  exfat_sops ; 
 int FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 struct exfat_sb_info* FUNC11 (int,int /*<<< orphan*/ ) ; 
 void* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC14 (struct super_block*) ; 
 long FUNC15 (void*,int,int*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,int) ; 

__attribute__((used)) static int FUNC20(struct super_block *sb, void *data, int silent)
{
	struct inode *root_inode = NULL;
	struct exfat_sb_info *sbi;
	int debug, ret;
	long error;
	char buf[50];

	/*
	 * GFP_KERNEL is ok here, because while we do hold the
	 * supeblock lock, memory pressure can't call back into
	 * the filesystem, since we're only just about to mount
	 * it and have no inodes etc active!
	 */
	sbi = FUNC11(sizeof(*sbi), GFP_KERNEL);
	if (!sbi)
		return -ENOMEM;
	FUNC13(&sbi->s_lock);
	sb->s_fs_info = sbi;
	sb->s_flags |= SB_NODIRATIME;
	sb->s_magic = EXFAT_SUPER_MAGIC;
	sb->s_op = &exfat_sops;
	sb->s_export_op = &exfat_export_ops;

	error = FUNC15(data, silent, &debug, &sbi->options);
	if (error)
		goto out_fail;

	FUNC18(sb);

	error = -EIO;
	FUNC17(sb, 512);
	sb->s_maxbytes = 0x7fffffffffffffffLL;    /* maximum file size */

	ret = FUNC7(sb);
	if (ret) {
		if (!silent)
			FUNC16("[EXFAT] ffsMountVol failed\n");

		goto out_fail;
	}

	/* set up enough so that it can read an inode */
	FUNC5(sb);

	/*
	 * The low byte of FAT's first entry must have same value with
	 * media-field.  But in real world, too many devices is
	 * writing wrong value.  So, removed that validity check.
	 *
	 * if (FAT_FIRST_ENT(sb, media) != first)
	 */

	/* codepage is not meaningful in exfat */
	if (sbi->fs_info.vol_type != EXFAT) {
		error = -EINVAL;
		FUNC19(buf, "cp%d", sbi->options.codepage);
		sbi->nls_disk = FUNC12(buf);
		if (!sbi->nls_disk) {
			FUNC16("[EXFAT] Codepage %s not found\n", buf);
			goto out_fail2;
		}
	}

	sbi->nls_io = FUNC12(sbi->options.iocharset);

	error = -ENOMEM;
	root_inode = FUNC14(sb);
	if (!root_inode)
		goto out_fail2;
	root_inode->i_ino = EXFAT_ROOT_INO;
	FUNC1(root_inode, 1);

	error = FUNC6(root_inode);
	if (error < 0)
		goto out_fail2;
	error = -ENOMEM;
	FUNC3(root_inode, FUNC0(root_inode)->i_pos);
	FUNC9(root_inode);
	sb->s_root = FUNC2(root_inode);
	if (!sb->s_root) {
		FUNC16("[EXFAT] Getting the root inode failed\n");
		goto out_fail2;
	}

	return 0;

out_fail2:
	FUNC8(sb);
out_fail:
	if (root_inode)
		FUNC10(root_inode);
	sb->s_fs_info = NULL;
	FUNC4(sbi);
	return error;
}