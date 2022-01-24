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
struct TYPE_5__ {int /*<<< orphan*/  unique; int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_2__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_read {int /*<<< orphan*/  usage; scalar_t__ len; scalar_t__ pos; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int /*<<< orphan*/  ac; TYPE_3__* cbi; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_call {int /*<<< orphan*/ * request; struct afs_read* read_request; int /*<<< orphan*/ * out_volsync; struct afs_status_cb* out_scb; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_6__ {TYPE_1__* server; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_SERVER_FL_IS_YFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FSFETCHDATA ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  afs_RXFSFetchData ; 
 struct afs_call* FUNC1 (struct afs_net*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (struct afs_fs_cursor*,struct afs_status_cb*,struct afs_read*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_call*,TYPE_3__*) ; 
 struct afs_net* FUNC6 (struct afs_vnode*) ; 
 int FUNC7 (struct afs_call*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct afs_call*,TYPE_2__*) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int FUNC14 (struct afs_fs_cursor*,struct afs_status_cb*,struct afs_read*) ; 

int FUNC15(struct afs_fs_cursor *fc,
		      struct afs_status_cb *scb,
		      struct afs_read *req)
{
	struct afs_vnode *vnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC6(vnode);
	__be32 *bp;

	if (FUNC11(AFS_SERVER_FL_IS_YFS, &fc->cbi->server->flags))
		return FUNC14(fc, scb, req);

	if (FUNC13(req->pos) ||
	    FUNC13(req->len) ||
	    FUNC13(req->pos + req->len))
		return FUNC2(fc, scb, req);

	FUNC0("");

	call = FUNC1(net, &afs_RXFSFetchData, 24, (21 + 3 + 6) * 4);
	if (!call)
		return -ENOMEM;

	call->key = fc->key;
	call->out_scb = scb;
	call->out_volsync = NULL;
	call->read_request = req;

	/* marshall the parameters */
	bp = call->request;
	bp[0] = FUNC8(FSFETCHDATA);
	bp[1] = FUNC8(vnode->fid.vid);
	bp[2] = FUNC8(vnode->fid.vnode);
	bp[3] = FUNC8(vnode->fid.unique);
	bp[4] = FUNC8(FUNC9(req->pos));
	bp[5] = FUNC8(FUNC9(req->len));

	FUNC10(&req->usage);
	FUNC5(call, fc->cbi);
	FUNC12(call, &vnode->fid);
	FUNC4(call, fc);
	FUNC3(&fc->ac, call, GFP_NOFS);
	return FUNC7(call, &fc->ac);
}