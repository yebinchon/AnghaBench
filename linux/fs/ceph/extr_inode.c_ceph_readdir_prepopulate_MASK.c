#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct qstr {int /*<<< orphan*/  name; int /*<<< orphan*/  len; int /*<<< orphan*/  hash; } ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; int /*<<< orphan*/  d_lock; } ;
struct ceph_vino {scalar_t__ ino; scalar_t__ snap; } ;
struct ceph_readdir_cache_control {scalar_t__ index; } ;
struct ceph_mds_session {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  offset_hash; int /*<<< orphan*/  frag; } ;
struct TYPE_15__ {TYPE_5__ readdir; } ;
struct ceph_mds_request_head {TYPE_6__ args; } ;
struct ceph_mds_reply_info_parsed {int dir_nr; scalar_t__ hash_order; struct ceph_mds_reply_dir_entry* dir_entries; TYPE_9__* dir_dir; TYPE_7__* head; scalar_t__ offset_hash; } ;
struct ceph_mds_request {int r_readdir_offset; scalar_t__ r_readdir_cache_idx; int /*<<< orphan*/  r_req_flags; int /*<<< orphan*/  r_request_started; int /*<<< orphan*/  r_session; int /*<<< orphan*/  r_caps_reservation; void* r_dir_ordered_cnt; void* r_dir_release_cnt; int /*<<< orphan*/  r_path2; TYPE_3__* r_request; struct ceph_mds_reply_info_parsed r_reply_info; struct dentry* r_dentry; } ;
struct TYPE_17__ {TYPE_1__* in; } ;
struct ceph_mds_reply_dir_entry {scalar_t__ offset; int /*<<< orphan*/  lease; TYPE_8__ inode; int /*<<< orphan*/  name_len; int /*<<< orphan*/  name; } ;
struct TYPE_13__ {int /*<<< orphan*/  dl_dir_hash; } ;
struct ceph_inode_info {int /*<<< orphan*/  i_shared_gen; TYPE_4__ i_dir_layout; int /*<<< orphan*/  i_ordered_count; int /*<<< orphan*/  i_release_count; } ;
struct ceph_dentry_info {scalar_t__ offset; scalar_t__ lease_shared_gen; } ;
struct TYPE_18__ {int /*<<< orphan*/  frag; } ;
struct TYPE_16__ {int /*<<< orphan*/  op; } ;
struct TYPE_11__ {struct ceph_mds_request_head* iov_base; } ;
struct TYPE_12__ {TYPE_2__ front; } ;
struct TYPE_10__ {int /*<<< orphan*/  snapid; int /*<<< orphan*/  ino; } ;

/* Variables and functions */
 scalar_t__ CEPH_MDS_OP_LSSNAP ; 
 int /*<<< orphan*/  CEPH_MDS_R_ABORTED ; 
 int /*<<< orphan*/  CEPH_MDS_R_DID_PREPOPULATE ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_inode_info*) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 struct ceph_dentry_info* FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,TYPE_9__*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 struct inode* FUNC11 (int /*<<< orphan*/ ,struct ceph_vino) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 struct ceph_inode_info* FUNC13 (struct inode*) ; 
 void* FUNC14 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ceph_readdir_cache_control*) ; 
 scalar_t__ FUNC16 (struct inode*) ; 
 scalar_t__ FUNC17 (struct inode*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC19 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC20 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC21 (struct dentry*) ; 
 struct inode* FUNC22 (struct dentry*) ; 
 struct dentry* FUNC23 (struct dentry*,struct qstr*) ; 
 scalar_t__ FUNC24 (struct dentry*) ; 
 scalar_t__ FUNC25 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 
 int /*<<< orphan*/  FUNC27 (struct dentry*) ; 
 int FUNC28 (struct inode*,int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ *,struct ceph_mds_session*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC29 (struct inode*,struct dentry*,struct ceph_readdir_cache_control*,struct ceph_mds_request*) ; 
 int /*<<< orphan*/  FUNC30 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ) ; 
 void* FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (char*,struct inode*) ; 
 int FUNC34 (struct ceph_mds_request*,struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int FUNC38 (struct dentry**,struct inode*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC40 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (struct inode*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC42(struct ceph_mds_request *req,
			     struct ceph_mds_session *session)
{
	struct dentry *parent = req->r_dentry;
	struct ceph_inode_info *ci = FUNC13(FUNC22(parent));
	struct ceph_mds_reply_info_parsed *rinfo = &req->r_reply_info;
	struct qstr dname;
	struct dentry *dn;
	struct inode *in;
	int err = 0, skipped = 0, ret, i;
	struct ceph_mds_request_head *rhead = req->r_request->front.iov_base;
	u32 frag = FUNC31(rhead->args.readdir.frag);
	u32 last_hash = 0;
	u32 fpos_offset;
	struct ceph_readdir_cache_control cache_ctl = {};

	if (FUNC40(CEPH_MDS_R_ABORTED, &req->r_req_flags))
		return FUNC34(req, session);

	if (rinfo->hash_order) {
		if (req->r_path2) {
			last_hash = FUNC18(ci->i_dir_layout.dl_dir_hash,
						  req->r_path2,
						  FUNC39(req->r_path2));
			last_hash = FUNC10(last_hash);
		} else if (rinfo->offset_hash) {
			/* mds understands offset_hash */
			FUNC2(req->r_readdir_offset != 2);
			last_hash = FUNC31(rhead->args.readdir.offset_hash);
		}
	}

	if (rinfo->dir_dir &&
	    FUNC31(rinfo->dir_dir->frag) != frag) {
		FUNC26("readdir_prepopulate got new frag %x -> %x\n",
		     frag, FUNC31(rinfo->dir_dir->frag));
		frag = FUNC31(rinfo->dir_dir->frag);
		if (!rinfo->hash_order)
			req->r_readdir_offset = 2;
	}

	if (FUNC31(rinfo->head->op) == CEPH_MDS_OP_LSSNAP) {
		FUNC26("readdir_prepopulate %d items under SNAPDIR dn %p\n",
		     rinfo->dir_nr, parent);
	} else {
		FUNC26("readdir_prepopulate %d items under dn %p\n",
		     rinfo->dir_nr, parent);
		if (rinfo->dir_dir)
			FUNC8(FUNC22(parent), rinfo->dir_dir);

		if (FUNC9(frag) &&
		    req->r_readdir_offset == 2 &&
		    !(rinfo->hash_order && last_hash)) {
			/* note dir version at start of readdir so we can
			 * tell if any dentries get dropped */
			req->r_dir_release_cnt =
				FUNC4(&ci->i_release_count);
			req->r_dir_ordered_cnt =
				FUNC4(&ci->i_ordered_count);
			req->r_readdir_cache_idx = 0;
		}
	}

	cache_ctl.index = req->r_readdir_cache_idx;
	fpos_offset = req->r_readdir_offset;

	/* FIXME: release caps/leases if error occurs */
	for (i = 0; i < rinfo->dir_nr; i++) {
		struct ceph_mds_reply_dir_entry *rde = rinfo->dir_entries + i;
		struct ceph_vino tvino;

		dname.name = rde->name;
		dname.len = rde->name_len;
		dname.hash = FUNC30(parent, dname.name, dname.len);

		tvino.ino = FUNC32(rde->inode.in->ino);
		tvino.snap = FUNC32(rde->inode.in->snapid);

		if (rinfo->hash_order) {
			u32 hash = FUNC18(ci->i_dir_layout.dl_dir_hash,
						 rde->name, rde->name_len);
			hash = FUNC10(hash);
			if (hash != last_hash)
				fpos_offset = 2;
			last_hash = hash;
			rde->offset = FUNC14(hash, fpos_offset++, true);
		} else {
			rde->offset = FUNC14(frag, fpos_offset++, false);
		}

retry_lookup:
		dn = FUNC23(parent, &dname);
		FUNC26("d_lookup on parent=%p name=%.*s got %p\n",
		     parent, dname.len, dname.name, dn);

		if (!dn) {
			dn = FUNC19(parent, &dname);
			FUNC26("d_alloc %p '%.*s' = %p\n", parent,
			     dname.len, dname.name, dn);
			if (!dn) {
				FUNC26("d_alloc badness\n");
				err = -ENOMEM;
				goto out;
			}
		} else if (FUNC25(dn) &&
			   (FUNC12(FUNC22(dn)) != tvino.ino ||
			    FUNC17(FUNC22(dn)) != tvino.snap)) {
			struct ceph_dentry_info *di = FUNC7(dn);
			FUNC26(" dn %p points to wrong inode %p\n",
			     dn, FUNC22(dn));

			FUNC36(&dn->d_lock);
			if (di->offset > 0 &&
			    di->lease_shared_gen ==
			    FUNC5(&ci->i_shared_gen)) {
				FUNC3(ci);
				di->offset = 0;
			}
			FUNC37(&dn->d_lock);

			FUNC20(dn);
			FUNC27(dn);
			goto retry_lookup;
		}

		/* inode */
		if (FUNC25(dn)) {
			in = FUNC22(dn);
		} else {
			in = FUNC11(parent->d_sb, tvino);
			if (FUNC0(in)) {
				FUNC26("new_inode badness\n");
				FUNC21(dn);
				FUNC27(dn);
				err = FUNC1(in);
				goto out;
			}
		}

		ret = FUNC28(in, NULL, &rde->inode, NULL, session,
				 req->r_request_started, -1,
				 &req->r_caps_reservation);
		if (ret < 0) {
			FUNC33("fill_inode badness on %p\n", in);
			if (FUNC24(dn)) {
				/* avoid calling iput_final() in mds
				 * dispatch threads */
				FUNC6(in);
			}
			FUNC21(dn);
			err = ret;
			goto next_item;
		}

		if (FUNC24(dn)) {
			if (FUNC16(in)) {
				FUNC26(" skip splicing dn %p to inode %p"
				     " (security xattr deadlock)\n", dn, in);
				FUNC6(in);
				skipped++;
				goto next_item;
			}

			err = FUNC38(&dn, in);
			if (err < 0)
				goto next_item;
		}

		FUNC7(dn)->offset = rde->offset;

		FUNC41(FUNC22(parent), dn,
				    rde->lease, req->r_session,
				    req->r_request_started);

		if (err == 0 && skipped == 0 && cache_ctl.index >= 0) {
			ret = FUNC29(FUNC22(parent), dn,
						 &cache_ctl, req);
			if (ret < 0)
				err = ret;
		}
next_item:
		FUNC27(dn);
	}
out:
	if (err == 0 && skipped == 0) {
		FUNC35(CEPH_MDS_R_DID_PREPOPULATE, &req->r_req_flags);
		req->r_readdir_cache_idx = cache_ctl.index;
	}
	FUNC15(&cache_ctl);
	FUNC26("readdir_prepopulate done\n");
	return err;
}