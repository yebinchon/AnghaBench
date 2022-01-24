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
struct TYPE_5__ {size_t vid; size_t vnode; size_t unique; } ;
struct afs_vnode {TYPE_2__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int /*<<< orphan*/  ac; TYPE_3__* cbi; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_call {int /*<<< orphan*/ * request; struct afs_status_cb* out_dir_scb; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_6__ {TYPE_1__* server; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_SERVER_FL_IS_YFS ; 
 int ENOMEM ; 
 size_t FSREMOVEDIR ; 
 size_t FSREMOVEFILE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  afs_RXFSRemoveDir ; 
 int /*<<< orphan*/  afs_RXFSRemoveFile ; 
 struct afs_call* FUNC1 (struct afs_net*,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*,struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,TYPE_3__*) ; 
 struct afs_net* FUNC5 (struct afs_vnode*) ; 
 int FUNC6 (struct afs_call*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct afs_call*,TYPE_2__*,char const*) ; 
 int FUNC13 (struct afs_fs_cursor*,struct afs_vnode*,char const*,int,struct afs_status_cb*) ; 

int FUNC14(struct afs_fs_cursor *fc, struct afs_vnode *vnode,
		  const char *name, bool isdir, struct afs_status_cb *dvnode_scb)
{
	struct afs_vnode *dvnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC5(dvnode);
	size_t namesz, reqsz, padsz;
	__be32 *bp;

	if (FUNC11(AFS_SERVER_FL_IS_YFS, &fc->cbi->server->flags))
		return FUNC13(fc, vnode, name, isdir, dvnode_scb);

	FUNC0("");

	namesz = FUNC10(name);
	padsz = (4 - (namesz & 3)) & 3;
	reqsz = (5 * 4) + namesz + padsz;

	call = FUNC1(
		net, isdir ? &afs_RXFSRemoveDir : &afs_RXFSRemoveFile,
		reqsz, (21 + 6) * 4);
	if (!call)
		return -ENOMEM;

	call->key = fc->key;
	call->out_dir_scb = dvnode_scb;

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC7(isdir ? FSREMOVEDIR : FSREMOVEFILE);
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

	FUNC4(call, fc->cbi);
	FUNC12(call, &dvnode->fid, name);
	FUNC3(call, fc);
	FUNC2(&fc->ac, call, GFP_NOFS);
	return FUNC6(call, &fc->ac);
}