#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct inode {int i_mode; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct TYPE_10__ {int /*<<< orphan*/  dentry; } ;
struct file {TYPE_3__ f_path; struct ceph_dir_file_info* private_data; } ;
struct dir_context {int pos; } ;
struct dentry {int dummy; } ;
struct ceph_vino {void* snap; void* ino; } ;
struct ceph_mds_reply_info_parsed {int dir_nr; struct ceph_mds_reply_dir_entry* dir_entries; scalar_t__ dir_end; scalar_t__ hash_order; TYPE_4__* dir_dir; scalar_t__ dir_complete; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; void* frag; void* offset_hash; } ;
struct TYPE_9__ {TYPE_1__ readdir; } ;
struct ceph_mds_request {unsigned int r_direct_hash; scalar_t__ r_dir_release_cnt; scalar_t__ r_dir_ordered_cnt; int r_readdir_cache_idx; int r_readdir_offset; struct ceph_mds_reply_info_parsed r_reply_info; int /*<<< orphan*/  r_req_flags; int /*<<< orphan*/  r_dentry; struct inode* r_inode; TYPE_2__ r_args; int /*<<< orphan*/  r_path2; int /*<<< orphan*/  r_inode_drop; int /*<<< orphan*/  r_direct_mode; } ;
struct TYPE_13__ {TYPE_5__* in; } ;
struct ceph_mds_reply_dir_entry {int offset; char* name; int name_len; TYPE_6__ inode; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_ceph_lock; int /*<<< orphan*/  i_ordered_count; int /*<<< orphan*/  i_release_count; int /*<<< orphan*/  i_shared_gen; } ;
struct ceph_fs_client {struct ceph_mds_client* mdsc; } ;
struct TYPE_14__ {int flags; } ;
struct ceph_dir_file_info {scalar_t__ dir_release_count; scalar_t__ dir_ordered_count; int readdir_cache_idx; int next_offset; unsigned int frag; TYPE_7__ file_info; int /*<<< orphan*/ * last_name; struct ceph_mds_request* last_readdir; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_12__ {int /*<<< orphan*/  snapid; int /*<<< orphan*/  ino; int /*<<< orphan*/  mode; } ;
struct TYPE_11__ {int /*<<< orphan*/  frag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CEPH_CAP_FILE_EXCL ; 
 int /*<<< orphan*/  CEPH_CAP_FILE_SHARED ; 
 int CEPH_F_ATEND ; 
 int CEPH_MDS_OP_LSSNAP ; 
 int CEPH_MDS_OP_READDIR ; 
 int /*<<< orphan*/  CEPH_MDS_R_DID_PREPOPULATE ; 
 int /*<<< orphan*/  CEPH_MDS_R_DIRECT_IS_HASH ; 
 int /*<<< orphan*/  CEPH_READDIR_REPLY_BITFLAGS ; 
 scalar_t__ CEPH_SNAPDIR ; 
 int /*<<< orphan*/  DCACHE ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct ceph_mds_request*) ; 
 int /*<<< orphan*/  NOASYNCREADDIR ; 
 int FUNC2 (struct ceph_mds_request*) ; 
 int /*<<< orphan*/  USE_AUTH_MDS ; 
 scalar_t__ FUNC3 (struct ceph_inode_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct ceph_inode_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_inode_info*,scalar_t__,scalar_t__) ; 
 int FUNC6 (struct file*,struct dir_context*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct ceph_mds_request*,struct inode*) ; 
 unsigned int FUNC11 (struct ceph_inode_info*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 unsigned int FUNC14 (unsigned int) ; 
 unsigned int FUNC15 (unsigned int) ; 
 struct ceph_inode_info* FUNC16 (struct inode*) ; 
 struct ceph_fs_client* FUNC17 (struct inode*) ; 
 void* FUNC18 (unsigned int,int,int) ; 
 struct ceph_mds_request* FUNC19 (struct ceph_mds_client*,int,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct ceph_mds_client*,int /*<<< orphan*/ *,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC21 (struct ceph_mds_request*) ; 
 scalar_t__ FUNC22 (struct inode*) ; 
 scalar_t__ FUNC23 (struct ceph_fs_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct ceph_vino) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 void* FUNC28 (unsigned int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct dir_context*,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (char*,...) ; 
 struct inode* FUNC32 (struct file*) ; 
 unsigned int FUNC33 (int) ; 
 unsigned int FUNC34 (int) ; 
 int FUNC35 (int) ; 
 int /*<<< orphan*/  FUNC36 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC37 (struct inode*) ; 
 scalar_t__ FUNC38 (int) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC41 (int /*<<< orphan*/ ) ; 
 void* FUNC42 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC43 (struct ceph_dir_file_info*,int) ; 
 int FUNC44 (struct ceph_dir_file_info*,char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC48 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC49(struct file *file, struct dir_context *ctx)
{
	struct ceph_dir_file_info *dfi = file->private_data;
	struct inode *inode = FUNC32(file);
	struct ceph_inode_info *ci = FUNC16(inode);
	struct ceph_fs_client *fsc = FUNC17(inode);
	struct ceph_mds_client *mdsc = fsc->mdsc;
	int i;
	int err;
	unsigned frag = -1;
	struct ceph_mds_reply_info_parsed *rinfo;

	FUNC31("readdir %p file %p pos %llx\n", inode, file, ctx->pos);
	if (dfi->file_info.flags & CEPH_F_ATEND)
		return 0;

	/* always start with . and .. */
	if (ctx->pos == 0) {
		FUNC31("readdir off 0 -> '.'\n");
		if (!FUNC30(ctx, ".", 1, 
			    FUNC24(inode->i_sb, inode->i_ino),
			    inode->i_mode >> 12))
			return 0;
		ctx->pos = 1;
	}
	if (ctx->pos == 1) {
		ino_t ino = FUNC45(file->f_path.dentry);
		FUNC31("readdir off 1 -> '..'\n");
		if (!FUNC30(ctx, "..", 2,
			    FUNC24(inode->i_sb, ino),
			    inode->i_mode >> 12))
			return 0;
		ctx->pos = 2;
	}

	/* can we use the dcache? */
	FUNC46(&ci->i_ceph_lock);
	if (FUNC23(fsc, DCACHE) &&
	    !FUNC23(fsc, NOASYNCREADDIR) &&
	    FUNC22(inode) != CEPH_SNAPDIR &&
	    FUNC4(ci) &&
	    FUNC3(ci, CEPH_CAP_FILE_SHARED, 1)) {
		int shared_gen = FUNC9(&ci->i_shared_gen);
		FUNC47(&ci->i_ceph_lock);
		err = FUNC6(file, ctx, shared_gen);
		if (err != -EAGAIN)
			return err;
	} else {
		FUNC47(&ci->i_ceph_lock);
	}

	/* proceed with a normal readdir */
more:
	/* do we have the correct frag content buffered? */
	if (FUNC43(dfi, ctx->pos)) {
		struct ceph_mds_request *req;
		int op = FUNC22(inode) == CEPH_SNAPDIR ?
			CEPH_MDS_OP_LSSNAP : CEPH_MDS_OP_READDIR;

		/* discard old result, if any */
		if (dfi->last_readdir) {
			FUNC21(dfi->last_readdir);
			dfi->last_readdir = NULL;
		}

		if (FUNC38(ctx->pos)) {
			/* fragtree isn't always accurate. choose frag
			 * based on previous reply when possible. */
			if (frag == (unsigned)-1)
				frag = FUNC11(ci, FUNC34(ctx->pos),
							NULL, NULL);
		} else {
			frag = FUNC33(ctx->pos);
		}

		FUNC31("readdir fetching %llx.%llx frag %x offset '%s'\n",
		     FUNC26(inode), frag, dfi->last_name);
		req = FUNC19(mdsc, op, USE_AUTH_MDS);
		if (FUNC1(req))
			return FUNC2(req);
		err = FUNC10(req, inode);
		if (err) {
			FUNC21(req);
			return err;
		}
		/* hints to request -> mds selection code */
		req->r_direct_mode = USE_AUTH_MDS;
		if (op == CEPH_MDS_OP_READDIR) {
			req->r_direct_hash = FUNC15(frag);
			FUNC7(CEPH_MDS_R_DIRECT_IS_HASH, &req->r_req_flags);
			req->r_inode_drop = CEPH_CAP_FILE_EXCL;
		}
		if (dfi->last_name) {
			req->r_path2 = FUNC40(dfi->last_name, GFP_KERNEL);
			if (!req->r_path2) {
				FUNC21(req);
				return -ENOMEM;
			}
		} else if (FUNC38(ctx->pos)) {
			req->r_args.readdir.offset_hash =
				FUNC28(FUNC34(ctx->pos));
		}

		req->r_dir_release_cnt = dfi->dir_release_count;
		req->r_dir_ordered_cnt = dfi->dir_ordered_count;
		req->r_readdir_cache_idx = dfi->readdir_cache_idx;
		req->r_readdir_offset = dfi->next_offset;
		req->r_args.readdir.frag = FUNC28(frag);
		req->r_args.readdir.flags =
				FUNC27(CEPH_READDIR_REPLY_BITFLAGS);

		req->r_inode = inode;
		FUNC37(inode);
		req->r_dentry = FUNC29(file->f_path.dentry);
		err = FUNC20(mdsc, NULL, req);
		if (err < 0) {
			FUNC21(req);
			return err;
		}
		FUNC31("readdir got and parsed readdir result=%d on "
		     "frag %x, end=%d, complete=%d, hash_order=%d\n",
		     err, frag,
		     (int)req->r_reply_info.dir_end,
		     (int)req->r_reply_info.dir_complete,
		     (int)req->r_reply_info.hash_order);

		rinfo = &req->r_reply_info;
		if (FUNC41(rinfo->dir_dir->frag) != frag) {
			frag = FUNC41(rinfo->dir_dir->frag);
			if (!rinfo->hash_order) {
				dfi->next_offset = req->r_readdir_offset;
				/* adjust ctx->pos to beginning of frag */
				ctx->pos = FUNC18(frag,
							  dfi->next_offset,
							  false);
			}
		}

		dfi->frag = frag;
		dfi->last_readdir = req;

		if (FUNC48(CEPH_MDS_R_DID_PREPOPULATE, &req->r_req_flags)) {
			dfi->readdir_cache_idx = req->r_readdir_cache_idx;
			if (dfi->readdir_cache_idx < 0) {
				/* preclude from marking dir ordered */
				dfi->dir_ordered_count = 0;
			} else if (FUNC12(frag) &&
				   dfi->next_offset == 2) {
				/* note dir version at start of readdir so
				 * we can tell if any dentries get dropped */
				dfi->dir_release_count = req->r_dir_release_cnt;
				dfi->dir_ordered_count = req->r_dir_ordered_cnt;
			}
		} else {
			FUNC31("readdir !did_prepopulate\n");
			/* disable readdir cache */
			dfi->readdir_cache_idx = -1;
			/* preclude from marking dir complete */
			dfi->dir_release_count = 0;
		}

		/* note next offset and last dentry name */
		if (rinfo->dir_nr > 0) {
			struct ceph_mds_reply_dir_entry *rde =
					rinfo->dir_entries + (rinfo->dir_nr-1);
			unsigned next_offset = req->r_reply_info.dir_end ?
					2 : (FUNC35(rde->offset) + 1);
			err = FUNC44(dfi, rde->name, rde->name_len,
					       next_offset);
			if (err)
				return err;
		} else if (req->r_reply_info.dir_end) {
			dfi->next_offset = 2;
			/* keep last name */
		}
	}

	rinfo = &dfi->last_readdir->r_reply_info;
	FUNC31("readdir frag %x num %d pos %llx chunk first %llx\n",
	     dfi->frag, rinfo->dir_nr, ctx->pos,
	     rinfo->dir_nr ? rinfo->dir_entries[0].offset : 0LL);

	i = 0;
	/* search start position */
	if (rinfo->dir_nr > 0) {
		int step, nr = rinfo->dir_nr;
		while (nr > 0) {
			step = nr >> 1;
			if (rinfo->dir_entries[i + step].offset < ctx->pos) {
				i +=  step + 1;
				nr -= step + 1;
			} else {
				nr = step;
			}
		}
	}
	for (; i < rinfo->dir_nr; i++) {
		struct ceph_mds_reply_dir_entry *rde = rinfo->dir_entries + i;
		struct ceph_vino vino;
		ino_t ino;
		u32 ftype;

		FUNC0(rde->offset < ctx->pos);

		ctx->pos = rde->offset;
		FUNC31("readdir (%d/%d) -> %llx '%.*s' %p\n",
		     i, rinfo->dir_nr, ctx->pos,
		     rde->name_len, rde->name, &rde->inode.in);

		FUNC0(!rde->inode.in);
		ftype = FUNC41(rde->inode.in->mode) >> 12;
		vino.ino = FUNC42(rde->inode.in->ino);
		vino.snap = FUNC42(rde->inode.in->snapid);
		ino = FUNC25(vino);

		if (!FUNC30(ctx, rde->name, rde->name_len,
			      FUNC24(inode->i_sb, ino), ftype)) {
			FUNC31("filldir stopping us...\n");
			return 0;
		}
		ctx->pos++;
	}

	FUNC21(dfi->last_readdir);
	dfi->last_readdir = NULL;

	if (dfi->next_offset > 2) {
		frag = dfi->frag;
		goto more;
	}

	/* more frags? */
	if (!FUNC13(dfi->frag)) {
		frag = FUNC14(dfi->frag);
		if (FUNC38(ctx->pos)) {
			loff_t new_pos = FUNC18(FUNC15(frag),
							dfi->next_offset, true);
			if (new_pos > ctx->pos)
				ctx->pos = new_pos;
			/* keep last_name */
		} else {
			ctx->pos = FUNC18(frag, dfi->next_offset,
							false);
			FUNC39(dfi->last_name);
			dfi->last_name = NULL;
		}
		FUNC31("readdir next frag is %x\n", frag);
		goto more;
	}
	dfi->file_info.flags |= CEPH_F_ATEND;

	/*
	 * if dir_release_count still matches the dir, no dentries
	 * were released during the whole readdir, and we should have
	 * the complete dir contents in our cache.
	 */
	if (FUNC8(&ci->i_release_count) ==
					dfi->dir_release_count) {
		FUNC46(&ci->i_ceph_lock);
		if (dfi->dir_ordered_count ==
				FUNC8(&ci->i_ordered_count)) {
			FUNC31(" marking %p complete and ordered\n", inode);
			/* use i_size to track number of entries in
			 * readdir cache */
			FUNC0(dfi->readdir_cache_idx < 0);
			FUNC36(inode, dfi->readdir_cache_idx *
				     sizeof(struct dentry*));
		} else {
			FUNC31(" marking %p complete\n", inode);
		}
		FUNC5(ci, dfi->dir_release_count,
					dfi->dir_ordered_count);
		FUNC47(&ci->i_ceph_lock);
	}

	FUNC31("readdir %p file %p done.\n", inode, file);
	return 0;
}