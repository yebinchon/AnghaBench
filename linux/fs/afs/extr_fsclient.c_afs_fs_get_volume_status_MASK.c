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
struct afs_volume_status {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_2__ fid; } ;
struct afs_net {int dummy; } ;
struct afs_fs_cursor {int /*<<< orphan*/  ac; TYPE_3__* cbi; int /*<<< orphan*/  key; struct afs_vnode* vnode; } ;
struct afs_call {int /*<<< orphan*/ * request; struct afs_volume_status* out_volstatus; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_6__ {TYPE_1__* server; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ AFSOPAQUEMAX ; 
 int /*<<< orphan*/  AFS_SERVER_FL_IS_YFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FSGETVOLUMESTATUS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  afs_RXFSGetVolumeStatus ; 
 struct afs_call* FUNC1 (struct afs_net*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct afs_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*,struct afs_fs_cursor*) ; 
 int /*<<< orphan*/  FUNC4 (struct afs_call*,TYPE_3__*) ; 
 struct afs_net* FUNC5 (struct afs_vnode*) ; 
 int FUNC6 (struct afs_call*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct afs_call*,TYPE_2__*) ; 
 int FUNC11 (struct afs_fs_cursor*,struct afs_volume_status*) ; 

int FUNC12(struct afs_fs_cursor *fc,
			     struct afs_volume_status *vs)
{
	struct afs_vnode *vnode = fc->vnode;
	struct afs_call *call;
	struct afs_net *net = FUNC5(vnode);
	__be32 *bp;

	if (FUNC9(AFS_SERVER_FL_IS_YFS, &fc->cbi->server->flags))
		return FUNC11(fc, vs);

	FUNC0("");

	call = FUNC1(net, &afs_RXFSGetVolumeStatus, 2 * 4,
				   FUNC8(12 * 4, AFSOPAQUEMAX + 1));
	if (!call)
		return -ENOMEM;

	call->key = fc->key;
	call->out_volstatus = vs;

	/* marshall the parameters */
	bp = call->request;
	bp[0] = FUNC7(FSGETVOLUMESTATUS);
	bp[1] = FUNC7(vnode->fid.vid);

	FUNC4(call, fc->cbi);
	FUNC10(call, &vnode->fid);
	FUNC3(call, fc);
	FUNC2(&fc->ac, call, GFP_NOFS);
	return FUNC6(call, &fc->ac);
}