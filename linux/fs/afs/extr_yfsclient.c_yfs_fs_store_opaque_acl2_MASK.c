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
struct TYPE_5__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct TYPE_6__ {int error; } ;
struct afs_fs_cursor {TYPE_3__ ac; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_call {int /*<<< orphan*/ * request; int /*<<< orphan*/ * out_volsync; struct afs_status_cb* out_scb; int /*<<< orphan*/  key; } ;
struct afs_acl {size_t size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t YFSSTOREOPAQUEACL2 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct afs_call* FUNC1 (struct afs_net*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct afs_call*,int /*<<< orphan*/ ) ; 
 struct afs_net* FUNC3 (struct afs_vnode*) ; 
 int FUNC4 (struct afs_call*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC8 (size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (struct afs_call*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  yfs_RXYFSStoreOpaqueACL2 ; 
 int /*<<< orphan*/  FUNC12 (struct afs_call*,int /*<<< orphan*/ *) ; 

int FUNC13(struct afs_fs_cursor *fc, const struct afs_acl *acl,
			     struct afs_status_cb *scb)
{
	struct afs_vnode *vnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC3(vnode);
	size_t size;
	__be32 *bp;

	FUNC0(",%x,{%llx:%llu},,",
	       FUNC5(fc->key), vnode->fid.vid, vnode->fid.vnode);

	size = FUNC8(acl->size, 4);
	call = FUNC1(net, &yfs_RXYFSStoreOpaqueACL2,
				   sizeof(__be32) * 2 +
				   sizeof(struct yfs_xdr_YFSFid) +
				   sizeof(__be32) + size,
				   sizeof(struct yfs_xdr_YFSFetchStatus) +
				   sizeof(struct yfs_xdr_YFSVolSync));
	if (!call) {
		fc->ac.error = -ENOMEM;
		return -ENOMEM;
	}

	call->key = fc->key;
	call->out_scb = scb;
	call->out_volsync = NULL;

	/* marshall the parameters */
	bp = call->request;
	bp = FUNC11(bp, YFSSTOREOPAQUEACL2);
	bp = FUNC11(bp, 0); /* RPC flags */
	bp = FUNC10(bp, &vnode->fid);
	bp = FUNC11(bp, acl->size);
	FUNC6(bp, acl->data, acl->size);
	if (acl->size != size)
		FUNC7((void *)bp + acl->size, 0, size - acl->size);
	FUNC12(call, bp);

	FUNC9(call, &vnode->fid);
	FUNC2(&fc->ac, call, GFP_KERNEL);
	return FUNC4(call, &fc->ac);
}