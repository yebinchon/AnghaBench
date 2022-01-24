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
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_blocks; struct super_block* i_sb; } ;
struct fs_info_t {int cluster_size_bits; scalar_t__ vol_type; int /*<<< orphan*/  v_sem; scalar_t__ dev_ejected; TYPE_1__* fs_func; } ;
struct file_id_t {int rwoffset; scalar_t__ start_clu; int flags; scalar_t__ hint_last_off; scalar_t__ hint_last_clu; int /*<<< orphan*/  entry; int /*<<< orphan*/  dir; } ;
struct entry_set_cache_t {int dummy; } ;
struct dentry_t {int dummy; } ;
struct chain_t {scalar_t__ dir; int flags; scalar_t__ size; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int s64 ;
typedef  scalar_t__ s32 ;
struct TYPE_6__ {int mmu_private; struct file_id_t fid; } ;
struct TYPE_5__ {struct fs_info_t fs_info; } ;
struct TYPE_4__ {scalar_t__ (* alloc_cluster ) (struct super_block*,int,struct chain_t*) ;int (* get_entry_flag ) (struct dentry_t*) ;scalar_t__ (* get_entry_clu0 ) (struct dentry_t*) ;int /*<<< orphan*/  (* set_entry_clu0 ) (struct dentry_t*,scalar_t__) ;int /*<<< orphan*/  (* set_entry_flag ) (struct dentry_t*,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ES_ALL_ENTRIES ; 
 scalar_t__ EXFAT ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 TYPE_2__* FUNC2 (struct super_block*) ; 
 int FUNC3 (struct super_block*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,scalar_t__,scalar_t__) ; 
 int FFS_ERROR ; 
 int FFS_FULL ; 
 int FFS_MEDIAERR ; 
 int FFS_SUCCESS ; 
 int /*<<< orphan*/  VOL_DIRTY ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct dentry_t* FUNC9 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct entry_set_cache_t* FUNC10 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dentry_t**) ; 
 int /*<<< orphan*/  FUNC11 (struct entry_set_cache_t*) ; 
 scalar_t__ FUNC12 (struct super_block*,int,struct chain_t*) ; 
 int FUNC13 (struct dentry_t*) ; 
 int /*<<< orphan*/  FUNC14 (struct dentry_t*,int) ; 
 scalar_t__ FUNC15 (struct dentry_t*) ; 
 int /*<<< orphan*/  FUNC16 (struct dentry_t*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct super_block*,struct entry_set_cache_t*) ; 

__attribute__((used)) static int FUNC19(struct inode *inode, s32 clu_offset, u32 *clu)
{
	s32 num_clusters, num_alloced;
	bool modified = false;
	u32 last_clu;
	int ret = FFS_SUCCESS;
	sector_t sector = 0;
	struct chain_t new_clu;
	struct dentry_t *ep;
	struct entry_set_cache_t *es = NULL;
	struct super_block *sb = inode->i_sb;
	struct fs_info_t *p_fs = &(FUNC2(sb)->fs_info);
	struct file_id_t *fid = &(FUNC1(inode)->fid);

	/* check the validity of pointer parameters */
	if (!clu)
		return FFS_ERROR;

	/* acquire the lock for file system critical section */
	FUNC6(&p_fs->v_sem);

	fid->rwoffset = (s64)(clu_offset) << p_fs->cluster_size_bits;

	if (FUNC1(inode)->mmu_private == 0)
		num_clusters = 0;
	else
		num_clusters = (s32)((FUNC1(inode)->mmu_private - 1) >>
				     p_fs->cluster_size_bits) + 1;

	*clu = last_clu = fid->start_clu;

	if (fid->flags == 0x03) {
		if ((clu_offset > 0) && (*clu != FUNC0(~0))) {
			last_clu += clu_offset - 1;

			if (clu_offset == num_clusters)
				*clu = FUNC0(~0);
			else
				*clu += clu_offset;
		}
	} else {
		/* hint information */
		if ((clu_offset > 0) && (fid->hint_last_off > 0) &&
		    (clu_offset >= fid->hint_last_off)) {
			clu_offset -= fid->hint_last_off;
			*clu = fid->hint_last_clu;
		}

		while ((clu_offset > 0) && (*clu != FUNC0(~0))) {
			last_clu = *clu;
			if (FUNC3(sb, *clu, clu) == -1) {
				ret = FFS_MEDIAERR;
				goto out;
			}
			clu_offset--;
		}
	}

	if (*clu == FUNC0(~0)) {
		FUNC8(sb, VOL_DIRTY);

		new_clu.dir = (last_clu == FUNC0(~0)) ? FUNC0(~0) :
					last_clu + 1;
		new_clu.size = 0;
		new_clu.flags = fid->flags;

		/* (1) allocate a cluster */
		num_alloced = p_fs->fs_func->alloc_cluster(sb, 1, &new_clu);
		if (num_alloced < 0) {
			ret = FFS_MEDIAERR;
			goto out;
		} else if (num_alloced == 0) {
			ret = FFS_FULL;
			goto out;
		}

		/* (2) append to the FAT chain */
		if (last_clu == FUNC0(~0)) {
			if (new_clu.flags == 0x01)
				fid->flags = 0x01;
			fid->start_clu = new_clu.dir;
			modified = true;
		} else {
			if (new_clu.flags != fid->flags) {
				FUNC7(sb, fid->start_clu,
							 num_clusters);
				fid->flags = 0x01;
				modified = true;
			}
			if (new_clu.flags == 0x01)
				FUNC4(sb, last_clu, new_clu.dir);
		}

		num_clusters += num_alloced;
		*clu = new_clu.dir;

		if (p_fs->vol_type == EXFAT) {
			es = FUNC10(sb, &fid->dir, fid->entry,
						  ES_ALL_ENTRIES, &ep);
			if (!es) {
				ret = FFS_MEDIAERR;
				goto out;
			}
			/* get stream entry */
			ep++;
		}

		/* (3) update directory entry */
		if (modified) {
			if (p_fs->vol_type != EXFAT) {
				ep = FUNC9(sb, &(fid->dir),
						      fid->entry, &sector);
				if (!ep) {
					ret = FFS_MEDIAERR;
					goto out;
				}
			}

			if (p_fs->fs_func->get_entry_flag(ep) != fid->flags)
				p_fs->fs_func->set_entry_flag(ep, fid->flags);

			if (p_fs->fs_func->get_entry_clu0(ep) != fid->start_clu)
				p_fs->fs_func->set_entry_clu0(ep,
							      fid->start_clu);

			if (p_fs->vol_type != EXFAT)
				FUNC5(sb, sector);
		}

		if (p_fs->vol_type == EXFAT) {
			FUNC18(sb, es);
			FUNC11(es);
		}

		/* add number of new blocks to inode */
		inode->i_blocks += num_alloced << (p_fs->cluster_size_bits - 9);
	}

	/* hint information */
	fid->hint_last_off = (s32)(fid->rwoffset >> p_fs->cluster_size_bits);
	fid->hint_last_clu = *clu;

	if (p_fs->dev_ejected)
		ret = FFS_MEDIAERR;

out:
	/* release the lock for file system critical section */
	FUNC17(&p_fs->v_sem);

	return ret;
}