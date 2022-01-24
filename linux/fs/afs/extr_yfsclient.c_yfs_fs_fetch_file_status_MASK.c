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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct yfs_xdr_YFSVolSync {int dummy; } ;
struct yfs_xdr_YFSFid {int dummy; } ;
struct yfs_xdr_YFSFetchStatus {int dummy; } ;
struct yfs_xdr_YFSCallBack {int dummy; } ;
struct afs_volsync {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct TYPE_6__ {int error; } ;
struct afs_fs_cursor {TYPE_3__ ac; int /*<<< orphan*/  cbi; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_call {int /*<<< orphan*/ * request; struct afs_volsync* out_volsync; struct afs_status_cb* out_scb; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  YFSFETCHSTATUS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct afs_call* FUNC1 (struct afs_net*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*,struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,int /*<<< orphan*/ ) ; 
 struct afs_net* FUNC5 (struct afs_vnode*) ; 
 int FUNC6 (struct afs_call*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct afs_call*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  yfs_RXYFSFetchStatus_vnode ; 
 int /*<<< orphan*/  FUNC11 (struct afs_call*,int /*<<< orphan*/ *) ; 

int FUNC12(struct afs_fs_cursor *fc, struct afs_status_cb *scb,
			     struct afs_volsync *volsync)
{
	struct afs_vnode *vnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC5(vnode);
	__be32 *bp;

	FUNC0(",%x,{%llx:%llu},,",
	       FUNC7(fc->key), vnode->fid.vid, vnode->fid.vnode);

	call = FUNC1(net, &yfs_RXYFSFetchStatus_vnode,
				   sizeof(__be32) * 2 +
				   sizeof(struct yfs_xdr_YFSFid),
				   sizeof(struct yfs_xdr_YFSFetchStatus) +
				   sizeof(struct yfs_xdr_YFSCallBack) +
				   sizeof(struct yfs_xdr_YFSVolSync));
	if (!call) {
		fc->ac.error = -ENOMEM;
		return -ENOMEM;
	}

	call->key = fc->key;
	call->out_scb = scb;
	call->out_volsync = volsync;

	/* marshall the parameters */
	bp = call->request;
	bp = FUNC10(bp, YFSFETCHSTATUS);
	bp = FUNC10(bp, 0); /* RPC flags */
	bp = FUNC9(bp, &vnode->fid);
	FUNC11(call, bp);

	FUNC4(call, fc->cbi);
	FUNC8(call, &vnode->fid);
	FUNC3(call, fc);
	FUNC2(&fc->ac, call, GFP_NOFS);
	return FUNC6(call, &fc->ac);
}