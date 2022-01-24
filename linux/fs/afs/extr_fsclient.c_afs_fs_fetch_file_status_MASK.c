#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct afs_volsync {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  unique; int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_2__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_net {int dummy; } ;
struct TYPE_8__ {int error; } ;
struct afs_fs_cursor {TYPE_3__ ac; TYPE_4__* cbi; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_call {int /*<<< orphan*/ * request; struct afs_volsync* out_volsync; struct afs_status_cb* out_scb; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_9__ {TYPE_1__* server; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_SERVER_FL_IS_YFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FSFETCHSTATUS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afs_RXFSFetchStatus_vnode ; 
 struct afs_call* FUNC1 (struct afs_net*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*,struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,TYPE_4__*) ; 
 struct afs_net* FUNC5 (struct afs_vnode*) ; 
 int FUNC6 (struct afs_call*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct afs_call*,TYPE_2__*) ; 
 int FUNC11 (struct afs_fs_cursor*,struct afs_status_cb*,struct afs_volsync*) ; 

int FUNC12(struct afs_fs_cursor *fc, struct afs_status_cb *scb,
			     struct afs_volsync *volsync)
{
	struct afs_vnode *vnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC5(vnode);
	__be32 *bp;

	if (FUNC9(AFS_SERVER_FL_IS_YFS, &fc->cbi->server->flags))
		return FUNC11(fc, scb, volsync);

	FUNC0(",%x,{%llx:%llu},,",
	       FUNC8(fc->key), vnode->fid.vid, vnode->fid.vnode);

	call = FUNC1(net, &afs_RXFSFetchStatus_vnode,
				   16, (21 + 3 + 6) * 4);
	if (!call) {
		fc->ac.error = -ENOMEM;
		return -ENOMEM;
	}

	call->key = fc->key;
	call->out_scb = scb;
	call->out_volsync = volsync;

	/* marshall the parameters */
	bp = call->request;
	bp[0] = FUNC7(FSFETCHSTATUS);
	bp[1] = FUNC7(vnode->fid.vid);
	bp[2] = FUNC7(vnode->fid.vnode);
	bp[3] = FUNC7(vnode->fid.unique);

	FUNC4(call, fc->cbi);
	FUNC10(call, &vnode->fid);

	FUNC3(call, fc);
	FUNC2(&fc->ac, call, GFP_NOFS);
	return FUNC6(call, &fc->ac);
}