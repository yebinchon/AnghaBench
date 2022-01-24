#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t umode_t ;
struct TYPE_9__ {size_t vid; size_t vnode; size_t unique; } ;
struct TYPE_7__ {size_t tv_sec; } ;
struct TYPE_8__ {TYPE_2__ i_mtime; } ;
struct afs_vnode {TYPE_4__ fid; TYPE_3__ vfs_inode; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int /*<<< orphan*/  ac; TYPE_5__* cbi; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_fid {int dummy; } ;
struct afs_call {int /*<<< orphan*/ * request; struct afs_status_cb* out_scb; struct afs_fid* out_fid; struct afs_status_cb* out_dir_scb; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_10__ {TYPE_1__* server; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_SERVER_FL_IS_YFS ; 
 size_t AFS_SET_MODE ; 
 size_t AFS_SET_MTIME ; 
 int ENOMEM ; 
 size_t FSCREATEFILE ; 
 size_t FSMAKEDIR ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 size_t S_IALLUGO ; 
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  afs_RXFSCreateFile ; 
 int /*<<< orphan*/  afs_RXFSMakeDir ; 
 struct afs_call* FUNC2 (struct afs_net*,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_call*,TYPE_5__*) ; 
 struct afs_net* FUNC6 (struct afs_vnode*) ; 
 int FUNC7 (struct afs_call*,int /*<<< orphan*/ *) ; 
 void* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct afs_call*,TYPE_4__*,char const*) ; 
 int FUNC14 (struct afs_fs_cursor*,char const*,size_t,struct afs_status_cb*,struct afs_fid*,struct afs_status_cb*) ; 
 int FUNC15 (struct afs_fs_cursor*,char const*,size_t,struct afs_status_cb*,struct afs_fid*,struct afs_status_cb*) ; 

int FUNC16(struct afs_fs_cursor *fc,
		  const char *name,
		  umode_t mode,
		  struct afs_status_cb *dvnode_scb,
		  struct afs_fid *newfid,
		  struct afs_status_cb *new_scb)
{
	struct afs_vnode *dvnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC6(dvnode);
	size_t namesz, reqsz, padsz;
	__be32 *bp;

	if (FUNC12(AFS_SERVER_FL_IS_YFS, &fc->cbi->server->flags)){
		if (FUNC0(mode))
			return FUNC15(fc, name, mode, dvnode_scb,
					       newfid, new_scb);
		else
			return FUNC14(fc, name, mode, dvnode_scb,
						  newfid, new_scb);
	}

	FUNC1("");

	namesz = FUNC11(name);
	padsz = (4 - (namesz & 3)) & 3;
	reqsz = (5 * 4) + namesz + padsz + (6 * 4);

	call = FUNC2(
		net, FUNC0(mode) ? &afs_RXFSMakeDir : &afs_RXFSCreateFile,
		reqsz, (3 + 21 + 21 + 3 + 6) * 4);
	if (!call)
		return -ENOMEM;

	call->key = fc->key;
	call->out_dir_scb = dvnode_scb;
	call->out_fid = newfid;
	call->out_scb = new_scb;

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC8(FUNC0(mode) ? FSMAKEDIR : FSCREATEFILE);
	*bp++ = FUNC8(dvnode->fid.vid);
	*bp++ = FUNC8(dvnode->fid.vnode);
	*bp++ = FUNC8(dvnode->fid.unique);
	*bp++ = FUNC8(namesz);
	FUNC9(bp, name, namesz);
	bp = (void *) bp + namesz;
	if (padsz > 0) {
		FUNC10(bp, 0, padsz);
		bp = (void *) bp + padsz;
	}
	*bp++ = FUNC8(AFS_SET_MODE | AFS_SET_MTIME);
	*bp++ = FUNC8(dvnode->vfs_inode.i_mtime.tv_sec); /* mtime */
	*bp++ = 0; /* owner */
	*bp++ = 0; /* group */
	*bp++ = FUNC8(mode & S_IALLUGO); /* unix mode */
	*bp++ = 0; /* segment size */

	FUNC5(call, fc->cbi);
	FUNC13(call, &dvnode->fid, name);
	FUNC4(call, fc);
	FUNC3(&fc->ac, call, GFP_NOFS);
	return FUNC7(call, &fc->ac);
}