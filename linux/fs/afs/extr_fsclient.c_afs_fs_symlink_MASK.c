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
 size_t FSSYMLINK ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 size_t S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  afs_RXFSSymlink ; 
 struct afs_call* FUNC1 (struct afs_net*,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*,struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,TYPE_5__*) ; 
 struct afs_net* FUNC5 (struct afs_vnode*) ; 
 int FUNC6 (struct afs_call*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct afs_call*,TYPE_4__*,char const*) ; 
 int FUNC13 (struct afs_fs_cursor*,char const*,char const*,struct afs_status_cb*,struct afs_fid*,struct afs_status_cb*) ; 

int FUNC14(struct afs_fs_cursor *fc,
		   const char *name,
		   const char *contents,
		   struct afs_status_cb *dvnode_scb,
		   struct afs_fid *newfid,
		   struct afs_status_cb *new_scb)
{
	struct afs_vnode *dvnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC5(dvnode);
	size_t namesz, reqsz, padsz, c_namesz, c_padsz;
	__be32 *bp;

	if (FUNC11(AFS_SERVER_FL_IS_YFS, &fc->cbi->server->flags))
		return FUNC13(fc, name, contents, dvnode_scb,
				      newfid, new_scb);

	FUNC0("");

	namesz = FUNC10(name);
	padsz = (4 - (namesz & 3)) & 3;

	c_namesz = FUNC10(contents);
	c_padsz = (4 - (c_namesz & 3)) & 3;

	reqsz = (6 * 4) + namesz + padsz + c_namesz + c_padsz + (6 * 4);

	call = FUNC1(net, &afs_RXFSSymlink, reqsz,
				   (3 + 21 + 21 + 6) * 4);
	if (!call)
		return -ENOMEM;

	call->key = fc->key;
	call->out_dir_scb = dvnode_scb;
	call->out_fid = newfid;
	call->out_scb = new_scb;

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC7(FSSYMLINK);
	*bp++ = FUNC7(dvnode->fid.vid);
	*bp++ = FUNC7(dvnode->fid.vnode);
	*bp++ = FUNC7(dvnode->fid.unique);
	*bp++ = FUNC7(namesz);
	FUNC8(bp, name, namesz);
	bp = (void *) bp + namesz;
	if (padsz > 0) {
		FUNC9(bp, 0, padsz);
		bp = (void *) bp + padsz;
	}
	*bp++ = FUNC7(c_namesz);
	FUNC8(bp, contents, c_namesz);
	bp = (void *) bp + c_namesz;
	if (c_padsz > 0) {
		FUNC9(bp, 0, c_padsz);
		bp = (void *) bp + c_padsz;
	}
	*bp++ = FUNC7(AFS_SET_MODE | AFS_SET_MTIME);
	*bp++ = FUNC7(dvnode->vfs_inode.i_mtime.tv_sec); /* mtime */
	*bp++ = 0; /* owner */
	*bp++ = 0; /* group */
	*bp++ = FUNC7(S_IRWXUGO); /* unix mode */
	*bp++ = 0; /* segment size */

	FUNC4(call, fc->cbi);
	FUNC12(call, &dvnode->fid, name);
	FUNC3(call, fc);
	FUNC2(&fc->ac, call, GFP_NOFS);
	return FUNC6(call, &fc->ac);
}