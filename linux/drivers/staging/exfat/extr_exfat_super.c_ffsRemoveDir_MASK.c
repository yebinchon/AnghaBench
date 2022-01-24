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
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fs_info_t {scalar_t__ vol_type; scalar_t__ root_dir; int cluster_size_bits; int /*<<< orphan*/  v_sem; scalar_t__ dev_ejected; TYPE_2__* fs_func; } ;
struct TYPE_4__ {scalar_t__ dir; int size; int flags; } ;
struct file_id_t {int entry; scalar_t__ start_clu; int size; int flags; TYPE_1__ dir; } ;
struct chain_t {scalar_t__ dir; int size; int flags; } ;
typedef  int s32 ;
struct TYPE_6__ {struct fs_info_t fs_info; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* free_cluster ) (struct super_block*,struct chain_t*,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EXFAT ; 
 TYPE_3__* FUNC1 (struct super_block*) ; 
 int FFS_FILEEXIST ; 
 int FFS_INVALIDFID ; 
 int FFS_MEDIAERR ; 
 int FFS_PERMISSIONERR ; 
 int FFS_SUCCESS ; 
 int /*<<< orphan*/  VOL_CLEAN ; 
 int /*<<< orphan*/  VOL_DIRTY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,struct chain_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct chain_t*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,struct chain_t*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file_id_t *fid)
{
	s32 dentry;
	int ret = FFS_SUCCESS;
	struct chain_t dir, clu_to_free;
	struct super_block *sb = inode->i_sb;
	struct fs_info_t *p_fs = &(FUNC1(sb)->fs_info);

	/* check the validity of the given file id */
	if (!fid)
		return FFS_INVALIDFID;

	dir.dir = fid->dir.dir;
	dir.size = fid->dir.size;
	dir.flags = fid->dir.flags;

	dentry = fid->entry;

	/* check if the file is "." or ".." */
	if (p_fs->vol_type != EXFAT) {
		if ((dir.dir != p_fs->root_dir) && (dentry < 2))
			return FFS_PERMISSIONERR;
	}

	/* acquire the lock for file system critical section */
	FUNC2(&p_fs->v_sem);

	clu_to_free.dir = fid->start_clu;
	clu_to_free.size = (s32)((fid->size - 1) >> p_fs->cluster_size_bits) + 1;
	clu_to_free.flags = fid->flags;

	if (!FUNC5(sb, &clu_to_free)) {
		ret = FFS_FILEEXIST;
		goto out;
	}

	FUNC3(sb, VOL_DIRTY);

	/* (1) update the directory entry */
	FUNC6(inode, &dir, dentry);

	/* (2) free the clusters */
	p_fs->fs_func->free_cluster(sb, &clu_to_free, 1);

	fid->size = 0;
	fid->start_clu = FUNC0(~0);
	fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;

#ifdef CONFIG_EXFAT_DELAYED_SYNC
	fs_sync(sb, false);
	fs_set_vol_flags(sb, VOL_CLEAN);
#endif

	if (p_fs->dev_ejected)
		ret = FFS_MEDIAERR;

out:
	/* release the lock for file system critical section */
	FUNC8(&p_fs->v_sem);

	return ret;
}