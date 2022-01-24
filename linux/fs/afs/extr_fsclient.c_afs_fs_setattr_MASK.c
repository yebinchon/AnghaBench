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
struct iattr {int ia_valid; } ;
struct TYPE_5__ {int /*<<< orphan*/  unique; int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_2__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int /*<<< orphan*/  ac; TYPE_3__* cbi; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_call {int /*<<< orphan*/ * request; struct afs_status_cb* out_scb; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_6__ {TYPE_1__* server; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_SERVER_FL_IS_YFS ; 
 int ATTR_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FSSTORESTATUS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_RXFSStoreStatus ; 
 struct afs_call* FUNC1 (struct afs_net*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (struct afs_fs_cursor*,struct iattr*,struct afs_status_cb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_call*,TYPE_3__*) ; 
 struct afs_net* FUNC6 (struct afs_vnode*) ; 
 int FUNC7 (struct afs_call*,int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct afs_call*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,struct iattr*) ; 
 int FUNC13 (struct afs_fs_cursor*,struct iattr*,struct afs_status_cb*) ; 

int FUNC14(struct afs_fs_cursor *fc, struct iattr *attr,
		   struct afs_status_cb *scb)
{
	struct afs_vnode *vnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC6(vnode);
	__be32 *bp;

	if (FUNC10(AFS_SERVER_FL_IS_YFS, &fc->cbi->server->flags))
		return FUNC13(fc, attr, scb);

	if (attr->ia_valid & ATTR_SIZE)
		return FUNC2(fc, attr, scb);

	FUNC0(",%x,{%llx:%llu},,",
	       FUNC9(fc->key), vnode->fid.vid, vnode->fid.vnode);

	call = FUNC1(net, &afs_RXFSStoreStatus,
				   (4 + 6) * 4,
				   (21 + 6) * 4);
	if (!call)
		return -ENOMEM;

	call->key = fc->key;
	call->out_scb = scb;

	/* marshall the parameters */
	bp = call->request;
	*bp++ = FUNC8(FSSTORESTATUS);
	*bp++ = FUNC8(vnode->fid.vid);
	*bp++ = FUNC8(vnode->fid.vnode);
	*bp++ = FUNC8(vnode->fid.unique);

	FUNC12(&bp, attr);

	FUNC5(call, fc->cbi);
	FUNC11(call, &vnode->fid);
	FUNC4(call, fc);
	FUNC3(&fc->ac, call, GFP_NOFS);
	return FUNC7(call, &fc->ac);
}