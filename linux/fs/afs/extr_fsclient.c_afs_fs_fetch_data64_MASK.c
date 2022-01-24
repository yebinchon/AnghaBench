#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  unique; int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_1__ fid; } ;
struct afs_status_cb {int dummy; } ;
struct afs_read {int /*<<< orphan*/  usage; int /*<<< orphan*/  len; int /*<<< orphan*/  pos; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int /*<<< orphan*/  ac; int /*<<< orphan*/  cbi; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_call {scalar_t__* request; struct afs_read* read_request; int /*<<< orphan*/ * out_volsync; struct afs_status_cb* out_scb; int /*<<< orphan*/  key; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FSFETCHDATA64 ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  afs_RXFSFetchData64 ; 
 struct afs_call* FUNC1 (struct afs_net*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*,struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,int /*<<< orphan*/ ) ; 
 struct afs_net* FUNC5 (struct afs_vnode*) ; 
 int FUNC6 (struct afs_call*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct afs_call*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct afs_fs_cursor *fc,
			       struct afs_status_cb *scb,
			       struct afs_read *req)
{
	struct afs_vnode *vnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC5(vnode);
	__be32 *bp;

	FUNC0("");

	call = FUNC1(net, &afs_RXFSFetchData64, 32, (21 + 3 + 6) * 4);
	if (!call)
		return -ENOMEM;

	call->key = fc->key;
	call->out_scb = scb;
	call->out_volsync = NULL;
	call->read_request = req;

	/* marshall the parameters */
	bp = call->request;
	bp[0] = FUNC7(FSFETCHDATA64);
	bp[1] = FUNC7(vnode->fid.vid);
	bp[2] = FUNC7(vnode->fid.vnode);
	bp[3] = FUNC7(vnode->fid.unique);
	bp[4] = FUNC7(FUNC11(req->pos));
	bp[5] = FUNC7(FUNC8(req->pos));
	bp[6] = 0;
	bp[7] = FUNC7(FUNC8(req->len));

	FUNC9(&req->usage);
	FUNC4(call, fc->cbi);
	FUNC10(call, &vnode->fid);
	FUNC3(call, fc);
	FUNC2(&fc->ac, call, GFP_NOFS);
	return FUNC6(call, &fc->ac);
}