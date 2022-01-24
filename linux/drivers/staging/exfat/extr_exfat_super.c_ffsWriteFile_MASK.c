#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct timestamp_t {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fs_info_t {int cluster_size_bits; int cluster_size; scalar_t__ vol_type; int /*<<< orphan*/  v_sem; scalar_t__ dev_ejected; TYPE_1__* fs_func; } ;
struct file_id_t {scalar_t__ type; int rwoffset; int size; scalar_t__ start_clu; int flags; int hint_last_off; scalar_t__ hint_last_clu; int /*<<< orphan*/  attr; int /*<<< orphan*/  entry; int /*<<< orphan*/  dir; } ;
struct entry_set_cache_t {int dummy; } ;
struct dentry_t {int dummy; } ;
struct chain_t {scalar_t__ dir; int flags; scalar_t__ size; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct bd_info_t {int sector_size_bits; int sector_size_mask; int sector_size; } ;
typedef  scalar_t__ sector_t ;
typedef  int s32 ;
struct TYPE_4__ {struct bd_info_t bd_info; struct fs_info_t fs_info; } ;
struct TYPE_3__ {int (* alloc_cluster ) (struct super_block*,int,struct chain_t*) ;int (* get_entry_flag ) (struct dentry_t*) ;int (* get_entry_size ) (struct dentry_t*) ;scalar_t__ (* get_entry_clu0 ) (struct dentry_t*) ;int /*<<< orphan*/  (* set_entry_clu0 ) (struct dentry_t*,scalar_t__) ;int /*<<< orphan*/  (* set_entry_size ) (struct dentry_t*,int) ;int /*<<< orphan*/  (* set_entry_flag ) (struct dentry_t*,int) ;int /*<<< orphan*/  (* set_entry_attr ) (struct dentry_t*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_entry_time ) (struct dentry_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_ARCHIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ES_ALL_ENTRIES ; 
 scalar_t__ EXFAT ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 int FUNC2 (struct super_block*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,scalar_t__,scalar_t__) ; 
 int FFS_ERROR ; 
 int FFS_FULL ; 
 int FFS_INVALIDFID ; 
 int FFS_MEDIAERR ; 
 int FFS_PERMISSIONERR ; 
 int FFS_SUCCESS ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  TM_MODIFY ; 
 scalar_t__ TYPE_FILE ; 
 int /*<<< orphan*/  VOL_CLEAN ; 
 int /*<<< orphan*/  VOL_DIRTY ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,int) ; 
 struct dentry_t* FUNC11 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct entry_set_cache_t* FUNC12 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dentry_t**) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct entry_set_cache_t*) ; 
 int FUNC15 (struct super_block*,scalar_t__,struct buffer_head**,int) ; 
 int FUNC16 (struct super_block*,scalar_t__,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct super_block*,int,struct chain_t*) ; 
 int /*<<< orphan*/  FUNC18 (struct dentry_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct dentry_t*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct dentry_t*) ; 
 int /*<<< orphan*/  FUNC21 (struct dentry_t*,int) ; 
 int FUNC22 (struct dentry_t*) ; 
 int /*<<< orphan*/  FUNC23 (struct dentry_t*,int) ; 
 scalar_t__ FUNC24 (struct dentry_t*) ; 
 int /*<<< orphan*/  FUNC25 (struct dentry_t*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (struct timestamp_t*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (struct super_block*,struct entry_set_cache_t*) ; 

__attribute__((used)) static int FUNC29(struct inode *inode, struct file_id_t *fid,
			void *buffer, u64 count, u64 *wcount)
{
	bool modified = false;
	s32 offset, sec_offset, clu_offset;
	s32 num_clusters, num_alloc, num_alloced = (s32)~0;
	int ret = 0;
	u32 clu, last_clu;
	sector_t LogSector, sector = 0;
	u64 oneblkwrite, write_bytes;
	struct chain_t new_clu;
	struct timestamp_t tm;
	struct dentry_t *ep, *ep2;
	struct entry_set_cache_t *es = NULL;
	struct buffer_head *tmp_bh = NULL;
	struct super_block *sb = inode->i_sb;
	struct fs_info_t *p_fs = &(FUNC1(sb)->fs_info);
	struct bd_info_t *p_bd = &(FUNC1(sb)->bd_info);

	/* check the validity of the given file id */
	if (!fid)
		return FFS_INVALIDFID;

	/* check the validity of pointer parameters */
	if (!buffer)
		return FFS_ERROR;

	/* acquire the lock for file system critical section */
	FUNC7(&p_fs->v_sem);

	/* check if the given file ID is opened */
	if (fid->type != TYPE_FILE) {
		ret = FFS_PERMISSIONERR;
		goto out;
	}

	if (fid->rwoffset > fid->size)
		fid->rwoffset = fid->size;

	if (count == 0) {
		if (wcount)
			*wcount = 0;
		ret = FFS_SUCCESS;
		goto out;
	}

	FUNC9(sb, VOL_DIRTY);

	if (fid->size == 0)
		num_clusters = 0;
	else
		num_clusters = (s32)((fid->size - 1) >>
				     p_fs->cluster_size_bits) + 1;

	write_bytes = 0;

	while (count > 0) {
		clu_offset = (s32)(fid->rwoffset >> p_fs->cluster_size_bits);
		clu = last_clu = fid->start_clu;

		if (fid->flags == 0x03) {
			if ((clu_offset > 0) && (clu != FUNC0(~0))) {
				last_clu += clu_offset - 1;

				if (clu_offset == num_clusters)
					clu = FUNC0(~0);
				else
					clu += clu_offset;
			}
		} else {
			/* hint information */
			if ((clu_offset > 0) && (fid->hint_last_off > 0) &&
			    (clu_offset >= fid->hint_last_off)) {
				clu_offset -= fid->hint_last_off;
				clu = fid->hint_last_clu;
			}

			while ((clu_offset > 0) && (clu != FUNC0(~0))) {
				last_clu = clu;
				/* clu = FAT_read(sb, clu); */
				if (FUNC2(sb, clu, &clu) == -1) {
					ret = FFS_MEDIAERR;
					goto out;
				}
				clu_offset--;
			}
		}

		if (clu == FUNC0(~0)) {
			num_alloc = (s32)((count - 1) >>
					  p_fs->cluster_size_bits) + 1;
			new_clu.dir = (last_clu == FUNC0(~0)) ?
					FUNC0(~0) : last_clu + 1;
			new_clu.size = 0;
			new_clu.flags = fid->flags;

			/* (1) allocate a chain of clusters */
			num_alloced = p_fs->fs_func->alloc_cluster(sb,
								   num_alloc,
								   &new_clu);
			if (num_alloced == 0)
				break;
			if (num_alloced < 0) {
				ret = FFS_MEDIAERR;
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
					FUNC8(sb,
								 fid->start_clu,
								 num_clusters);
					fid->flags = 0x01;
					modified = true;
				}
				if (new_clu.flags == 0x01)
					FUNC3(sb, last_clu, new_clu.dir);
			}

			num_clusters += num_alloced;
			clu = new_clu.dir;
		}

		/* hint information */
		fid->hint_last_off = (s32)(fid->rwoffset >>
					   p_fs->cluster_size_bits);
		fid->hint_last_clu = clu;

		/* byte offset in cluster   */
		offset = (s32)(fid->rwoffset & (p_fs->cluster_size - 1));

		/* sector offset in cluster */
		sec_offset = offset >> p_bd->sector_size_bits;

		/* byte offset in sector    */
		offset &= p_bd->sector_size_mask;

		LogSector = FUNC4(clu) + sec_offset;

		oneblkwrite = (u64)(p_bd->sector_size - offset);
		if (oneblkwrite > count)
			oneblkwrite = count;

		if ((offset == 0) && (oneblkwrite == p_bd->sector_size)) {
			if (FUNC15(sb, LogSector, &tmp_bh, 0) !=
			    FFS_SUCCESS)
				goto err_out;
			FUNC13((char *)tmp_bh->b_data,
			       (char *)buffer + write_bytes, (s32)oneblkwrite);
			if (FUNC16(sb, LogSector, tmp_bh, 0) !=
			    FFS_SUCCESS) {
				FUNC5(tmp_bh);
				goto err_out;
			}
		} else {
			if ((offset > 0) ||
			    ((fid->rwoffset + oneblkwrite) < fid->size)) {
				if (FUNC15(sb, LogSector, &tmp_bh, 1) !=
				    FFS_SUCCESS)
					goto err_out;
			} else {
				if (FUNC15(sb, LogSector, &tmp_bh, 0) !=
				    FFS_SUCCESS)
					goto err_out;
			}

			FUNC13((char *)tmp_bh->b_data + offset,
			       (char *)buffer + write_bytes, (s32)oneblkwrite);
			if (FUNC16(sb, LogSector, tmp_bh, 0) !=
			    FFS_SUCCESS) {
				FUNC5(tmp_bh);
				goto err_out;
			}
		}

		count -= oneblkwrite;
		write_bytes += oneblkwrite;
		fid->rwoffset += oneblkwrite;

		fid->attr |= ATTR_ARCHIVE;

		if (fid->size < fid->rwoffset) {
			fid->size = fid->rwoffset;
			modified = true;
		}
	}

	FUNC5(tmp_bh);

	/* (3) update the direcoty entry */
	if (p_fs->vol_type == EXFAT) {
		es = FUNC12(sb, &(fid->dir), fid->entry,
					  ES_ALL_ENTRIES, &ep);
		if (!es)
			goto err_out;
		ep2 = ep + 1;
	} else {
		ep = FUNC11(sb, &(fid->dir), fid->entry, &sector);
		if (!ep)
			goto err_out;
		ep2 = ep;
	}

	p_fs->fs_func->set_entry_time(ep, FUNC26(&tm), TM_MODIFY);
	p_fs->fs_func->set_entry_attr(ep, fid->attr);

	if (p_fs->vol_type != EXFAT)
		FUNC6(sb, sector);

	if (modified) {
		if (p_fs->fs_func->get_entry_flag(ep2) != fid->flags)
			p_fs->fs_func->set_entry_flag(ep2, fid->flags);

		if (p_fs->fs_func->get_entry_size(ep2) != fid->size)
			p_fs->fs_func->set_entry_size(ep2, fid->size);

		if (p_fs->fs_func->get_entry_clu0(ep2) != fid->start_clu)
			p_fs->fs_func->set_entry_clu0(ep2, fid->start_clu);

		if (p_fs->vol_type != EXFAT)
			FUNC6(sb, sector);
	}

	if (p_fs->vol_type == EXFAT) {
		FUNC28(sb, es);
		FUNC14(es);
	}

#ifdef CONFIG_EXFAT_DELAYED_SYNC
	fs_sync(sb, false);
	fs_set_vol_flags(sb, VOL_CLEAN);
#endif

err_out:
	/* set the size of written bytes */
	if (wcount)
		*wcount = write_bytes;

	if (num_alloced == 0)
		ret = FFS_FULL;

	else if (p_fs->dev_ejected)
		ret = FFS_MEDIAERR;

out:
	/* release the lock for file system critical section */
	FUNC27(&p_fs->v_sem);

	return ret;
}