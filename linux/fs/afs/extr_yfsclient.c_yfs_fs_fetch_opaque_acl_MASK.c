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
struct yfs_acl {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  error; } ;
struct afs_fs_cursor {TYPE_3__ ac; int /*<<< orphan*/  cbi; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_call {int /*<<< orphan*/ * request; int /*<<< orphan*/ * out_volsync; struct afs_status_cb* out_scb; struct yfs_acl* out_yacl; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct yfs_acl* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  YFSFETCHOPAQUEACL ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct afs_call* FUNC2 (struct afs_net*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,int /*<<< orphan*/ ) ; 
 struct afs_net* FUNC5 (struct afs_vnode*) ; 
 scalar_t__ FUNC6 (struct afs_call*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct afs_call*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  yfs_RXYFSFetchOpaqueACL ; 
 int /*<<< orphan*/  FUNC11 (struct afs_call*,int /*<<< orphan*/ *) ; 

struct yfs_acl *FUNC12(struct afs_fs_cursor *fc,
					struct yfs_acl *yacl,
					struct afs_status_cb *scb)
{
	struct afs_vnode *vnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC5(vnode);
	__be32 *bp;

	FUNC1(",%x,{%llx:%llu},,",
	       FUNC7(fc->key), vnode->fid.vid, vnode->fid.vnode);

	call = FUNC2(net, &yfs_RXYFSFetchOpaqueACL,
				   sizeof(__be32) * 2 +
				   sizeof(struct yfs_xdr_YFSFid),
				   sizeof(__be32) * 2 +
				   sizeof(struct yfs_xdr_YFSFetchStatus) +
				   sizeof(struct yfs_xdr_YFSVolSync));
	if (!call) {
		fc->ac.error = -ENOMEM;
		return FUNC0(-ENOMEM);
	}

	call->key = fc->key;
	call->out_yacl = yacl;
	call->out_scb = scb;
	call->out_volsync = NULL;

	/* marshall the parameters */
	bp = call->request;
	bp = FUNC10(bp, YFSFETCHOPAQUEACL);
	bp = FUNC10(bp, 0); /* RPC flags */
	bp = FUNC9(bp, &vnode->fid);
	FUNC11(call, bp);

	FUNC4(call, fc->cbi);
	FUNC8(call, &vnode->fid);
	FUNC3(&fc->ac, call, GFP_KERNEL);
	return (struct yfs_acl *)FUNC6(call, &fc->ac);
}